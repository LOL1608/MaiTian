//
//  TabBarController.m
//  9999
//
//  Created by tarena001 on 16/12/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "TabBarController.h"
#import "HomePageViewController.h"
#import "LiveViewController.h"
#import "MyViewController.h"
@interface TabBarController ()
@property (nonatomic) HomePageViewController *homeVC;
@property (nonatomic) LiveViewController *liveVC;
@property (nonatomic) MyViewController *myVC;
@end

@implementation TabBarController
- (HomePageViewController *)homeVC{
    if (!_homeVC) {
        _homeVC = [HomePageViewController new];
        _homeVC.tabBarItem.title = @"主页";
        _homeVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarHome_49x36_"];
        _homeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarHomeSelected_49x36_"];
    }
    return _homeVC;
}

- (LiveViewController *)liveVC{
    if (!_liveVC) {
        _liveVC = [LiveViewController new];
        _liveVC.tabBarItem.title = @"直播";
        _liveVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarFriendsSelected_49x36_"];
    }
    return _liveVC;
}

- (MyViewController *)myVC{
    if (!_myVC) {
        _myVC = [MyViewController new];
        _myVC.tabBarItem.title = @"我";
        _myVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarProfile_49x36_"];
        _myVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarProfileSelected_49x36_"];
    }
    return _myVC;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *navi0 = [[UINavigationController alloc] initWithRootViewController:self.homeVC];
    UINavigationController *navi1 = [[UINavigationController alloc] initWithRootViewController:self.liveVC];
    self.viewControllers = @[navi0, navi1, self.myVC];
    //设置了全局的所有tabbarItem的文字样式. 选中时的
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
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
