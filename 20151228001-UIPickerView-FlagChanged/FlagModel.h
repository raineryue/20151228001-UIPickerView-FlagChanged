//
//  FlagModel.h
//  20151228001-UIPickerView-FlagChanged
//
//  Created by Rainer on 15/12/28.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlagModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;

- (instancetype)initFlagWithDictionary:(NSDictionary *)dictionary;

+ (instancetype)flagWithDictionary:(NSDictionary *)dictionary;

- (NSArray *)flagArray;

+ (NSArray *)flagArray;

@end
