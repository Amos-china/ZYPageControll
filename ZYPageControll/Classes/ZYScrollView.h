//
//  ZYScrollView.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ZYPreferenceSetting.h"

@interface ZYScrollView : UIView<UIScrollViewDelegate>

@property (nonatomic,strong) ZYPreferenceSetting *preferenceSetting;
@property (nonatomic,copy)void(^myBlock)(BOOL);

-(void)createImageViewWithImages:(NSArray *)imageNameArray;



@end
