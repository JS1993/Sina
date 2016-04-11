//
//  StatusFrame.m
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "StatusFrame.h"

@implementation StatusFrame
-(void)setStatus:(Status *)status{
    _status=status;
    //设置间距
    CGFloat padding=10;
    //头像长宽
    CGFloat headW=30;
    //设置头像
    _headImageViewFrame=CGRectMake(padding, padding, headW, headW);
    //设置name
    NSDictionary* nameDict=@{NSFontAttributeName:[UIFont systemFontOfSize:16]};
    CGRect nameRect=[self.status.name boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:nameDict context:nil];
    nameRect.origin.x=CGRectGetMaxX(self.headImageViewFrame)+padding;
    nameRect.origin.y=padding+0.5*(self.headImageViewFrame.size.height-nameRect.size.height);
    _nameLabelFrame=nameRect;
    //设置vip
    if (self.status.vip!=0) {
        _vipImageViewFrame=CGRectMake(CGRectGetMaxX(self.nameLabelFrame)+padding, nameRect.origin.y, 14, 14);
    }
    //设置正文
    NSDictionary* textDict=@{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    CGRect textRect=[self.status.text boundingRectWithSize:CGSizeMake(300, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:textDict context:nil];
    textRect.origin.x=10;
    textRect.origin.y=CGRectGetMaxY(self.headImageViewFrame)+padding;
    _textxLabelFrame=textRect;
    //设置图片
    if (self.status.picture.length>0) {
        _detailImageViewFrame=CGRectMake(10, CGRectGetMaxY(self.textxLabelFrame)+padding, 100, 100);
        //取得行高
        _cellHight=CGRectGetMaxY(self.detailImageViewFrame)+padding;
    }else{
        _cellHight=CGRectGetMaxY(self.textxLabelFrame)+padding;
    }
    
}
+(NSArray*)statusFrame{
    NSMutableArray* arrM=[NSMutableArray array];
    NSArray* arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses" ofType:@"plist"]];
    for (NSDictionary* dic in arr ) {
        StatusFrame* statusF=[[StatusFrame alloc]init];
        statusF.status=[Status statusWithDict:dic];
        [arrM addObject:statusF];
    }
    return arrM;
}

@end
