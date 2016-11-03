//
//  FSManageViewController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSManageViewController.h"
#import "FSSearchViewController.h"
#import "FSMessageViewController.h"

@interface FSManageViewController ()

@end

@implementation FSManageViewController
#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNav];
}

- (void)setUpNav {
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = @"渠道助手";
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(searchBarDidClick) normalImage:@"search" selImage:nil];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(messageButtonDidClick) normalImage:@"email" selImage:nil];
}

#pragma mark - 监控方法
- (void)searchBarDidClick {
    FSSearchViewController *searchVC = [[FSSearchViewController alloc] init];
    [self.navigationController pushViewController:searchVC animated:YES];
}
- (void)messageButtonDidClick {
    FSMessageViewController *messageVC = [[FSMessageViewController alloc] init];
    [self.navigationController pushViewController:messageVC animated:YES];
}
#pragma mark - 懒加载

@end
