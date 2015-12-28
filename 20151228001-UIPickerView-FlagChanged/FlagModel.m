//
//  FlagModel.m
//  20151228001-UIPickerView-FlagChanged
//
//  Created by Rainer on 15/12/28.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import "FlagModel.h"

@implementation FlagModel

- (instancetype)initFlagWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    
    return self;
}

+ (instancetype)flagWithDictionary:(NSDictionary *)dictionary {
    return [[FlagModel alloc] initFlagWithDictionary:dictionary];
}

- (NSArray *)flagArray {
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"flags" ofType:@"plist"]];
    
    NSMutableArray *flagArray = [NSMutableArray array];
    
    [plistArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [flagArray addObject:[[FlagModel alloc] initFlagWithDictionary:obj]];
    }];
    
    return flagArray;
}

+ (NSArray *)flagArray {
    return [[[FlagModel alloc] init] flagArray];
}

@end
