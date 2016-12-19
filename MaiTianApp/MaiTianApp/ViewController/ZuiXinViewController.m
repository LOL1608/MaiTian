//
//  ZuiXinViewController.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/15.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "ZuiXinViewController.h"
#import "ZuiXinCell.h"
#import "ZuiXinViewModel.h"
@interface ZuiXinViewController ()

@property (nonatomic) ZuiXinViewModel *zuiXinVM;

@end

@implementation ZuiXinViewController
#pragma mark - Lazy
- (ZuiXinViewModel *)zuiXinVM {
    if(_zuiXinVM == nil) {
        _zuiXinVM = [[ZuiXinViewModel alloc] init];
    }
    return _zuiXinVM;
}
#pragma mark - init
- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.sectionInset = UIEdgeInsetsMake(0, 10, 10, 10);
    CGFloat width = (long)((kScreenW - 10 * 3) / 2);
    CGFloat height = width;
    layout.itemSize = CGSizeMake(width, height);
    if (self = [super initWithCollectionViewLayout:layout]) {
    }
    return self;
}

#pragma mark - Life
static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = kVcBgColor;
    
    [self.collectionView registerClass:[ZuiXinCell class] forCellWithReuseIdentifier:@"ZuiXinCell"];
    
    MJWeakSelf
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [_zuiXinVM getDataWithRequestMode:RequestModelRefresh completionHandler:^(NSError *error) {
            [weakSelf.collectionView.mj_header endRefreshing];
            if (!error) {
                [weakSelf.collectionView reloadData];
            }
            
        }];
    }];
    [self.collectionView.mj_header beginRefreshing];
    
    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [_zuiXinVM getDataWithRequestMode:RequestModelMore completionHandler:^(NSError *error) {
            [weakSelf.collectionView.mj_footer endRefreshing];
            if (!error) {
                [weakSelf.collectionView reloadData];
            }
        }];
    }];
    
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.zuiXinVM.rowNumber;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ZuiXinCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZuiXinCell" forIndexPath:indexPath];
    
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.layer.cornerRadius = 10;
    cell.clipsToBounds = YES;
    
    [cell.coverIV setImageURL:[_zuiXinVM coverURLForRow:indexPath.row]];
    [cell.avaterIV setImageURL:[_zuiXinVM avaterURLForRow:indexPath.row]];
    cell.nickLB.text = [_zuiXinVM nickForRow:indexPath.row];
    cell.titleLB.text = [_zuiXinVM titleForRow:indexPath.row];
    cell.statusIV.image = [UIImage imageNamed:[_zuiXinVM status]];
    cell.viewLB.text = [_zuiXinVM viewNumForRow:indexPath.row];

    return cell;
}

- (void)dealloc {
    NSLog(@"ZuiXin销毁销毁销毁销毁销毁销毁销毁");
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */



@end
