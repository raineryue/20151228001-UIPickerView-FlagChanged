//
//  FlagView.h
//  20151228001-UIPickerView-FlagChanged
//
//  Created by Rainer on 15/12/28.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlagModel;

@interface FlagView : UIView

@property (nonatomic, strong) FlagModel *flag;

- (instancetype)initFlagView;

+ (instancetype)flagView;

@end
