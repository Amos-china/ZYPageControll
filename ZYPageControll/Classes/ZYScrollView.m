//
//  ZYScrollView.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//

#import "ZYScrollView.h"
#import "ZYPageControl.h"

@implementation ZYScrollView{
    
    ZYPageControl *_pageControl;
}

-(void)createImageViewWithImages:(NSArray *)imageNameArray{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    scrollView.contentSize = CGSizeMake(imageNameArray.count *self.bounds.size.width, self.bounds.size.height);
    scrollView.pagingEnabled = YES;
    scrollView.contentOffset = CGPointZero;
    scrollView.bounces = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.delegate = self;
    [self addSubview:scrollView];
    for (int i = 0; i<imageNameArray.count; i++) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(i*self.bounds.size.width, 0, self.bounds.size.width, self.bounds.size.height)];
        imageV.image = [UIImage imageNamed:imageNameArray[i]];
        if (i == imageNameArray.count - 1) {
            imageV.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToMainView)];
            [imageV addGestureRecognizer:tap];
        }
        [scrollView addSubview:imageV];
    }
    [self createPageControlWithPages:imageNameArray.count];
}

- (void)createIntoMainPageButton {
    UIButton *mainPageButton = [UIButton buttonWithType:UIButtonTypeCustom];
    mainPageButton.frame = CGRectMake(self.bounds.size.width - 100, 74, 70, 40);
    [mainPageButton setTitle:@"进入首页" forState:UIControlStateNormal];
}

-(void)createPageControlWithPages:(NSUInteger)number{
    _pageControl = [[ZYPageControl alloc] initWithFrame:CGRectMake((self.bounds.size.width - 150)/2, self.bounds.size.height-70- 30, 150, 30)];
    _pageControl.numberOfPages = number;
    _pageControl.preferenceSetting = self.preferenceSetting;
    [_pageControl setCurrentPage:0];
    [self addSubview:_pageControl];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [_pageControl setCurrentPage:(scrollView.contentOffset.x/scrollView.frame.size.width)];
}

-(void)goToMainView{
    self.myBlock(YES);
}

- (ZYPreferenceSetting *)preferenceSetting {
    if (!_preferenceSetting) {
        _preferenceSetting = [[ZYPreferenceSetting alloc] init];
    }
    return _preferenceSetting;
}

@end
