//
//  ZYPageControl.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//


#import "ZYPageControl.h"

@implementation ZYPageControl

-(void)setCurrentPage:(NSInteger)currentPage{
    int i = 0;
    for (UIView *view in self.subviews) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,self.preferenceSetting.size, self.preferenceSetting.size)];
        label.font = [UIFont systemFontOfSize:self.preferenceSetting.numberFont];
        label.textAlignment = NSTextAlignmentCenter;
        if (self.preferenceSetting.isCircular) {
            label.layer.cornerRadius = self.preferenceSetting.size/2;
            label.layer.masksToBounds = YES;
        }
        if (self.preferenceSetting.displayNumber) {
            label.text = [NSString stringWithFormat:@"%d",i+1];
        }
        if (i == currentPage) {
            label.backgroundColor = self.preferenceSetting.bacgrudColor;
            label.textColor = self.preferenceSetting.numberColor;
        }else{
            label.backgroundColor = self.preferenceSetting.selectBacgrudColor;
            label.textColor = [UIColor blackColor];
        }
        [view addSubview:label];
        i++;
    }
}

@end
