//
//  ZYScrollView.h
//  ZYCustemPageControll
//
//  Created by wxiao_zhiyuanChen on 2018/5/7.
//  Copyright © 2018年 wxiao_dev_03. All rights reserved.
//

#import "ZYPreferenceSetting.h"

@implementation ZYPreferenceSetting

- (CGFloat)size {
    if (!_size) {
        _size = 15.0;
    }
    return _size;
}

- (BOOL)displayNumber {
    if (!_displayNumber) {
        _displayNumber = YES;
    }
    return _displayNumber;
}

- (UIColor *)bacgrudColor {
    if (!_bacgrudColor) {
        _bacgrudColor = [UIColor blackColor];
    }
    return _bacgrudColor;
}

- (UIColor *)numberColor {
    if (!_numberColor) {
        _numberColor = [UIColor whiteColor];
    }
    return _numberColor;
}

- (UIColor *)selectBacgrudColor {
    if (!_selectBacgrudColor) {
        _selectBacgrudColor = [UIColor grayColor];
    }
    return _selectBacgrudColor;
}

- (UIColor *)selectNumberBacgrudColor {
    if (!_selectNumberBacgrudColor) {
        _selectNumberBacgrudColor = [UIColor blackColor];
    }
    return _selectNumberBacgrudColor;
}

- (CGFloat)numberFont {
    if (!_numberFont) {
        _numberFont = 10.0;
    }
    return _numberFont;
}

- (BOOL)isCircular {
    if (!_isCircular) {
        _isCircular = YES;
    }
    return _isCircular;
}

@end
