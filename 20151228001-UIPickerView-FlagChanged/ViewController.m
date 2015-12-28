//
//  ViewController.m
//  20151228001-UIPickerView-FlagChanged
//
//  Created by Rainer on 15/12/28.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "FlagModel.h"
#import "FlagView.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

/** 选择器控件 */
@property (weak, nonatomic) IBOutlet UIPickerView *flagPickerView;

/** 国旗列表 */
@property (strong, nonatomic) NSArray *flagArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置选择器控件数据源
    self.flagPickerView.dataSource = self;
    // 设置选择器控件代理
    self.flagPickerView.delegate = self;
}

#pragma mark - 选择器控件数据源方法
/**
 *  返回选择器控件的列数
 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

/**
 *  返回当前列的总行数
 */
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.flagArray.count;
}

#pragma mark - 选择器控件代理方法

/**
 *  返回选择器控件的行
 */
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    // 1.查询该行选择器行是否可重用
    FlagView *flagView = (FlagView *)view;
    
    // 2.如果选择器行不存在则创建一个新的
    if (nil == flagView) {
        flagView = [FlagView flagView];
    }
    
    // 3.获取当前行的数据并赋值
    FlagModel *flag = self.flagArray[row];
    flagView.flag = flag;
    
    return flagView;
}

/**
 *  返回当前列的行高
 */
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 70;
}

#pragma mark - 属性懒加载
/**
 *  国旗列表数据懒加载
 */
- (NSArray *)flagArray {
    if (nil == _flagArray) {
        _flagArray = [FlagModel flagArray];
    }
    
    return _flagArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
