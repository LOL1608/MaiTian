//
//  HomePageViewController.m
//  9999
//
//  Created by tarena001 on 16/12/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "HomePageViewController.h"
#import "TuiJianCell.h"
#import "TuiJianViewModel.h"
@interface HomePageViewController ()

@property (nonatomic) TuiJianViewModel *tuiJianVM;

@end

@implementation HomePageViewController
- (TuiJianViewModel *)tuiJianVM {
    if(_tuiJianVM == nil) {
        _tuiJianVM = [[TuiJianViewModel alloc] init];
    }
    return _tuiJianVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = kVcBgColor;
    
    [self.collectionView registerClass:[TuiJianCell class] forCellWithReuseIdentifier:@"TuiJianCell"];
    
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [_tuiJianVM getDataWithRequestMode:RequestModelRefresh completionHandler:^(NSError *error) {
            [self.collectionView reloadData];
            [self.collectionView.mj_header endRefreshing];
        }];
    }];
    [self.collectionView.mj_header beginRefreshing];
    
    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        if (_tuiJianVM.noMoreData) {
            [self.collectionView.mj_footer endRefreshingWithNoMoreData];
        }
        [_tuiJianVM getDataWithRequestMode:RequestModelMore completionHandler:^(NSError *error) {
            [self.collectionView reloadData];
            [self.collectionView.mj_footer endRefreshing];
        }];
    }];
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tuiJianVM.rowNumber;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TuiJianCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TuiJianCell" forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.layer.cornerRadius = 10;
    cell.clipsToBounds = YES;
    
    [cell.coverIV setImageURL:[_tuiJianVM coverURLForRow:indexPath.row]];
    [cell.avaterIV setImageURL:[_tuiJianVM avaterURLForRow:indexPath.row]];
    cell.nickLB.text = [_tuiJianVM nickForRow:indexPath.row];
    cell.titleLB.text = [_tuiJianVM titleForRow:indexPath.row];
    cell.statusIV.image = [UIImage imageNamed:[_tuiJianVM status]];
    cell.viewLB.attributedText = [_tuiJianVM viewNumForRow:indexPath.row];
    
    
    
//    cell.coverIV.backgroundColor = [UIColor yellowColor];
//    cell.avaterIV.backgroundColor = [UIColor yellowColor];
//    cell.nickLB.text = @"撒娇王";
//    cell.titleLB.text = @"不看生气了";
//    [cell blackMaskView];
//    cell.statusIV.backgroundColor = [UIColor orangeColor];
//    cell.viewLB.text = @"👁9999 ";
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */



@end
