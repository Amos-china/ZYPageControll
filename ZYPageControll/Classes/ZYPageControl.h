//
//  ZYPageControl.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ZYPreferenceSetting.h"

@interface ZYPageControl : UIPageControl

/**
 偏好设置
 */
@property (nonatomic,strong) ZYPreferenceSetting *preferenceSetting;

@end
