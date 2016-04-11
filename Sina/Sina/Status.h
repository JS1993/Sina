//
//  Status.h
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Status : NSObject
@property(copy,nonatomic)NSString* text;
@property(copy,nonatomic)NSString* icon;
@property(copy,nonatomic)NSString* name;
@property(copy,nonatomic)NSNumber* vip;
+(NSArray*)status;
@end
