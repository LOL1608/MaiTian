//
//  MyViewController.m
//  9999
//
//  Created by tarena001 on 16/12/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MyViewController.h"
#import "MyCell.h"
@interface MyViewController ()
@property (nonatomic) UIView *topView;
//@property (nonatomic) UIView *statusBG;
@end

@implementation MyViewController
/*
 - (UIView *)statusBG{
 if (!_statusBG) {
 _statusBG = [UIView new];
 [self.tableView addSubview:_statusBG];
 [_statusBG mas_makeConstraints:^(MASConstraintMaker *make) {
 make.left.top.right.equalTo(0);
 make.height.equalTo(20);
 }];
 _statusBG.backgroundColor = [UIColor blackColor];
 }
 return _statusBG;
 }
 //电池条样式
 
 - (UIStatusBarStyle)preferredStatusBarStyle{
 return UIStatusBarStyleLightContent;
 }
 */

- (UIView *)topView{
    if (!_topView) {
        _topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180)];
        UILabel *nameLb = [UILabel new];
        [_topView addSubview:nameLb];
        [nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.top.equalTo(25);
        }];
        nameLb.text = @"&初见";
        UIButton *editBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:editBtn];
        [editBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(nameLb.mas_right).offset(5);
            make.centerY.equalTo(nameLb);
        }];
        [editBtn setBackgroundImage:[UIImage imageNamed:@"icon_editprofile"] forState:UIControlStateNormal];
        UIImageView *image1 = [UIImageView new];
        [_topView addSubview:image1];
        [image1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.top.equalTo(nameLb.mas_bottom).offset(5);
            make.size.equalTo(15);
        }];
        image1.image = [UIImage imageNamed:@"icon_male_sex"];
        UIImageView *image2 = [UIImageView new];
        [_topView addSubview:image2];
        [image2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(image1.mas_right).offset(5);
            make.top.equalTo(nameLb.mas_bottom).offset(5);
            make.size.equalTo(CGSizeMake(35, 15));
        }];
        image2.image = [UIImage imageNamed:@"bg_level1"];
        UILabel *gradeLb = [UILabel new];
        [_topView addSubview:gradeLb];
        [gradeLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(image2.mas_right).offset(-5);
            make.centerY.equalTo(image2);
        }];
        gradeLb.text = @"1";
        gradeLb.textColor = [UIColor whiteColor];
        gradeLb.font = [UIFont systemFontOfSize:13];
        UILabel *numberLb = [UILabel new];
        [_topView addSubview:numberLb];
        [numberLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(image2.mas_right).offset(5);
            make.centerY.equalTo(image2);
        }];
        numberLb.text = @"ID 1970319";
        numberLb.textColor = [UIColor grayColor];
        numberLb.font = [UIFont systemFontOfSize:14];
        UILabel *titleLb = [UILabel new];
        [_topView addSubview:titleLb];
        [titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.top.equalTo(image1.mas_bottom).offset(5);
        }];
        titleLb.text = @"这个人很懒,他什么都没说";
        titleLb.textColor = [UIColor grayColor];
        titleLb.font = [UIFont systemFontOfSize:16];
        UIImageView *iconIV = [UIImageView new];
        [_topView addSubview:iconIV];
        [iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(25);
            make.right.equalTo(-10);
            make.size.equalTo(70);
        }];
        iconIV.image = [UIImage imageNamed:@"th-2"];
        iconIV.layer.cornerRadius = 35;
        iconIV.clipsToBounds = YES;
        iconIV.contentMode = UIViewContentModeScaleAspectFill;
        UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn1];
        [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(titleLb.mas_bottom).offset(30);
            make.centerX.equalTo(self.topView.mas_centerX).offset(-150);
            make.size.equalTo(19);
        }];
        [btn1 setTitle:@"0" forState:UIControlStateNormal];
        [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn1.titleLabel.font = [UIFont systemFontOfSize:19];
        UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn2];
        [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn1);
            make.centerX.equalTo(self.topView.mas_centerX).offset(-50);
            make.size.equalTo(19);
        }];
        [btn2 setTitle:@"0" forState:UIControlStateNormal];
        [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn2.titleLabel.font = [UIFont systemFontOfSize:19];
        UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn3];
        [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn1);
            make.centerX.equalTo(self.topView.mas_centerX).offset(50);
            make.size.equalTo(19);
        }];
        [btn3 setTitle:@"0" forState:UIControlStateNormal];
        [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn3.titleLabel.font = [UIFont systemFontOfSize:19];
        UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn4];
        [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn1);
            make.centerX.equalTo(self.topView.mas_centerX).offset(150);
            make.size.equalTo(19);
        }];
        [btn4 setTitle:@"0" forState:UIControlStateNormal];
        [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn4.titleLabel.font = [UIFont systemFontOfSize:19];
        UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn5];
        [btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn1.mas_bottom);
            make.centerX.equalTo(self.topView.mas_centerX).offset(-150);
        }];
        [btn5 setTitle:@"魅力值" forState:UIControlStateNormal];
        [btn5 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn5.titleLabel.font = [UIFont systemFontOfSize:17];
        UIButton *btn6 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn6];
        [btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn5);
            make.centerX.equalTo(self.topView.mas_centerX).offset(-50);
        }];
        [btn6 setTitle:@"打赏值" forState:UIControlStateNormal];
        [btn6 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn6.titleLabel.font = [UIFont systemFontOfSize:17];
        UIButton *btn7 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn7];
        [btn7 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn5);
            make.centerX.equalTo(self.topView.mas_centerX).offset(50);
        }];
        [btn7 setTitle:@"关注" forState:UIControlStateNormal];
        [btn7 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn7.titleLabel.font = [UIFont systemFontOfSize:17];
        UIButton *btn8 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_topView addSubview:btn8];
        [btn8 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn5);
            make.centerX.equalTo(self.topView.mas_centerX).offset(150);
        }];
        [btn8 setTitle:@"粉丝" forState:UIControlStateNormal];
        [btn8 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn8.titleLabel.font = [UIFont systemFontOfSize:17];
    }
    return _topView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //[self statusBG];
    [self.tableView registerClass:[MyCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [UIView new];
    self.tableView.tableHeaderView = self.topView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.titleLb.text = @"我的消息";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_message"];
    }
    if (indexPath.row == 1) {
        cell.titleLb.text = @"我的账户";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_account"];
    }
    if (indexPath.row == 2) {
        cell.titleLb.text = @"我的发布";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_publish"];
    }
    if (indexPath.row == 3) {
        cell.titleLb.text = @"我的等级";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_earnings"];
    }
    if (indexPath.row == 4) {
        cell.titleLb.text = @"我的收益";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_level"];
    }
    if (indexPath.row == 5) {
        cell.titleLb.text = @"设置";
        cell.iconIV.image = [UIImage imageNamed:@"icon_personal_page"];
    }
    cell.separatorInset = UIEdgeInsetsZero;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
