//
//  FlagView.m
//  20151228001-UIPickerView-FlagChanged
//
//  Created by Rainer on 15/12/28.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import "FlagView.h"
#import "FlagModel.h"

@interface FlagView ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@end

@implementation FlagView

/**
 *  通过xib创建一个选择器行
 */
- (instancetype)initFlagView {
    return [[[NSBundle mainBundle] loadNibNamed:@"FlagView" owner:nil options:nil] lastObject];
}

/**
 *  通过xib创建一个选择器行
 */
+ (instancetype)flagView {
    return [[FlagView alloc] initFlagView];
}

/**
 *  复写flag的setter方法，填充控件信息
 */
- (void)setFlag:(FlagModel *)flag {
    _flag = flag;
    
    self.nameLabel.text = flag.name;
    self.iconImageView.image = [UIImage imageNamed:flag.icon];
}

@end
