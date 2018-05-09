//
//  ZYScrollView.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZYPreferenceSetting : NSObject

/**
 小白点大小 默认是15.0
 */
@property (nonatomic,assign) CGFloat size;

/**
 小白点是否显示数字,默认显示数字  设置数字颜色只有在YES情况下才有效果
 */
@property (nonatomic,assign) BOOL displayNumber;

/**
 小白点外观颜色 默认为黑色
 */
@property (nonatomic,strong) UIColor *bacgrudColor;

/**
 小白点数字颜色 默认为白色
 */
@property (nonatomic,strong) UIColor *numberColor;

/**
 小白点选中的颜色 默认为灰色
 */
@property (nonatomic,strong) UIColor *selectBacgrudColor;

/**
 小白点选中的数字颜色 默认为黑色
 */
@property (nonatomic,strong) UIColor *selectNumberBacgrudColor;

/**
 小白点数字文字大小,默认为10.0
 */
@property (nonatomic,assign) CGFloat numberFont;

/**
 小白点是否圆形 默认是圆的
 */
@property (nonatomic,assign) BOOL isCircular;

@end
