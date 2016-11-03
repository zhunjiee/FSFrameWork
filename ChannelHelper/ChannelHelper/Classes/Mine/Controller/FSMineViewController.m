//
//  FSMineViewController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSMineViewController.h"

@interface FSMineViewController ()

@end

@implementation FSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNav];
}

- (void)setUpNav {
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.navigationItem.title = @"系统设置";
    
}

@end
