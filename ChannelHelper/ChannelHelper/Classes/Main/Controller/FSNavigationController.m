//
//  FSNavigationController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSNavigationController.h"

@interface FSNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation FSNavigationController
+ (void)initialize{
    // 设置导航栏背景图片
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
    // 设置标题文字
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [bar setTitleTextAttributes:attrs];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置交互手势的代理为自己,并调用gestureRecognizerShouldBegin方法判断是否启用手势
    self.interactivePopGestureRecognizer.delegate = self;
}

/**
 *  重写push方法实现界面跳转后的各种设置
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    // 界面跳转隐藏底部TabBar按钮
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        // 可以修改全部返回按钮文字
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:FSColor(251, 32, 37) forState:UIControlStateHighlighted];
        // 按钮里的内容朝左边移动10
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [button sizeToFit];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    }
    
    
    // super的push方法最好写在最后,因为一旦调用push方法,就开始创建viewController的view,相当于调用viewController的viewDidLoad方法,会覆盖掉上面的所有设置
    [super pushViewController:viewController animated:animated];
}

- (void)back{
    [self popViewControllerAnimated:YES];
}

#pragma mark - UIGestureRecognizerDelegate
/**
 *  是否启用手势
 */
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    //    if (self.childViewControllers.count == 1) {
    //        return NO;
    //    }else{
    //        return YES;
    //    }
    
    
    return self.childViewControllers.count > 1;
}

@end
