//
//  UIBarButtonItem+BSExtension.h
//  Baisi
//
//  Created by 侯宝伟 on 15/9/20.
//  Copyright © 2015年 ZHUNJIEE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (FSExtension)

/**
 *  自定义导航栏的barButtonItem按钮
 *
 *  @param target     目标对象
 *  @param action     执行方法
 *  @param image      普通图片
 *  @param lightImage 高亮图片
 *
 *  @return 自定义按钮
 */
+ (instancetype)itemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)image lightImage:(NSString *)lightImage;

+ (instancetype)itemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)image selImage:(NSString *)selImage;
@end
