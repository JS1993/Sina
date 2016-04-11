//
//  Status.m
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "Status.h"

@implementation Status
-(instancetype)initWithDict:(NSDictionary*)dict{
    self=[super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)statusWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
+(NSArray*)status{
    NSMutableArray* arrM=[NSMutableArray array];
    NSArray* arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses" ofType:@"plist"]];
    for (NSDictionary* dic in arr ) {
        [arrM addObject:[self statusWithDict:dic]];
    }
    return arrM;
}

@end
