//
//  FSTabBarController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSTabBarController.h"
#import "FSManageViewController.h"
#import "FSAccountViewController.h"
#import "FSMineViewController.h"
#import "FSNavigationController.h"

@interface FSTabBarController ()

@end

@implementation FSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置所有子控制器
    [self setUpAllChildViewController];
    
    // 统一设置item的文字
    [self setUpTabBarItemAttrs];
    
}

/**
 *  统一设置所有item的属性
 */
- (void)setUpTabBarItemAttrs{
    
    // 通过appearance统一设置TabBar控制器的文字
    UITabBarItem *item = [UITabBarItem appearance];
    
    // 正常状态颜色
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    
    // 选中状态颜色
    NSMutableDictionary *selAttrs = [NSMutableDictionary dictionary];
    selAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:selAttrs forState:UIControlStateSelected];
}

/**
 *  设置所有子控制器
 */
- (void)setUpAllChildViewController{
    
    FSManageViewController *manageVC = [[FSManageViewController alloc] init];
    [self setUpOneChildViewController:manageVC withImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon" title:@"管理"];
    
    FSAccountViewController *accountVC = [[FSAccountViewController alloc] init];
    [self setUpOneChildViewController:accountVC withImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon" title:@"开户"];
    
    FSMineViewController *mineVC = [[FSMineViewController alloc] init];
    [self setUpOneChildViewController:mineVC withImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon" title:@"我的"];
}

/**
 *  设置单个子控制器
 */
- (void)setUpOneChildViewController:(UIViewController *)vc withImage:(NSString *)image selImage:(NSString *)selImage title:(NSString *)title{
    // 设置标题
    vc.tabBarItem.title = title;
    // 显示不被渲染的图片
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    // 创建导航控制器
    FSNavigationController *nav = [[FSNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
}

@end
