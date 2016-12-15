//
//  PageViewController.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/15.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "PageViewController.h"
#import "HomePageViewController.h"
#import "ZuiXinViewController.h"
#import "TuiJianLayout.h"
@interface PageViewController ()

@end

@implementation PageViewController

- (NSArray<NSString *> *)titles {
    return @[@"推荐", @"最新"];
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
    return self.titles.count;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    return self.titles[index];
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    if (index == 0) {
        return [[HomePageViewController alloc] initWithCollectionViewLayout:[TuiJianLayout new]];
    }else {
        return [[ZuiXinViewController alloc] init];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
