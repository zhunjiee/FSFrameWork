//
//  FSSearchViewController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSSearchViewController.h"

@interface FSSearchViewController ()

@end

@implementation FSSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNav];
}

- (void)setUpNav {
    self.view.backgroundColor = [UIColor greenColor];
    
    self.navigationItem.title = @"搜索";
    
}

@end
