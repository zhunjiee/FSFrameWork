//
//  UIView+BSExtension.h
//  Baisi
//
//  Created by 侯宝伟 on 15/9/21.
//  Copyright (c) 2015年 ZHUNJIEE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FSExtension)

@property(nonatomic, assign) CGFloat x;
@property(nonatomic, assign) CGFloat y;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;


/** 控件上部边线的位置(minY的位置) */
@property (nonatomic, assign) CGFloat top;
/** 控件底部边线的位置(maxY的位置) */
@property (nonatomic, assign) CGFloat bottom;
/** 控件左部边线的位置(minX的位置) */
@property (nonatomic, assign) CGFloat left;
/** 控件右部边线的位置(maxX的位置) */
@property (nonatomic, assign) CGFloat right;


/**
 *  从xib中加载控件(xib必须和类名一致)
 *
 *  @return xib路径
 */
+ (instancetype)viewFromXib;





/*
 
 @property在分类中只会生成成员变量的getter和setter方法的声明,不会生成实现
 @property不在分类中则会生成getter和setter方法的声明和实现,还会生成"_成员变量"
 
 */
@end
