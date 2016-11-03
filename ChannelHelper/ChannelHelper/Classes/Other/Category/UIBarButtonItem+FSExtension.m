//
//  UIBarButtonItem+BSExtension.m
//  Baisi
//
//  Created by 侯宝伟 on 15/9/20.
//  Copyright © 2015年 ZHUNJIEE. All rights reserved.
//

#import "UIBarButtonItem+FSExtension.h"

@implementation UIBarButtonItem (FSExtension)

+ (instancetype)itemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)image lightImage:(NSString *)lightImage{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:lightImage] forState:UIControlStateHighlighted];
    // 一定要设置尺寸啊亲
    [button sizeToFit];
    
    // 监听按钮点击
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
    

}

+ (instancetype)itemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)image selImage:(NSString *)selImage{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
    // 一定要设置尺寸啊亲
    [button sizeToFit];
    
    // 监听按钮点击
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
    
    
}
@end
