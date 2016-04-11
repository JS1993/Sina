//
//  NSString+Tools.h
//  05-新浪微博
//
//  Created by apple on 14-8-21.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
// 使用分类，可以把常用的方法，不好记的方法都抽取出来，进行归纳总结
// 随着学习的深入，我们每个人都会建立一大套属于自己的分类库！
@interface NSString (Tools)

/**
 *  计算当前字符串显示所需的实际frame，返回值的x = 0, y = 0
 */
- (CGRect)textRectWithSize:(CGSize)size attributes:(NSDictionary *)attributes;

@end
