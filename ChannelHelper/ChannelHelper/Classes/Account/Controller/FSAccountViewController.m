//
//  FSAccountViewController.m
//  ChannelHelper
//
//  Created by 侯宝伟 on 11/2/16.
//  Copyright © 2016 fosung. All rights reserved.
//

#import "FSAccountViewController.h"

@interface FSAccountViewController ()

@end

@implementation FSAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNav];
}

- (void)setUpNav {
    self.view.backgroundColor = [UIColor blueColor];
    
    self.navigationItem.title = @"商家开户";
    
}

@end
