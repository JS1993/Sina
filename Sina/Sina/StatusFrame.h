//
//  StatusFrame.h
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Status.h"
@interface StatusFrame : NSObject
@property(nonatomic,assign,readonly)CGRect nameLabelFrame;
@property(nonatomic,assign,readonly)CGRect headImageViewFrame;
@property(nonatomic,assign,readonly)CGRect vipImageViewFrame;
@property(nonatomic,assign,readonly)CGRect textxLabelFrame;
@property(nonatomic,assign,readonly)CGRect detailImageViewFrame;

@property(nonatomic,strong)Status* status;

+(NSArray*)statusFrame;
@end
