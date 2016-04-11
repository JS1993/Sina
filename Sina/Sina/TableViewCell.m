//
//  TableViewCell.m
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
-(UIImageView *)headImageView
{
if (_headImageView==nil) {
        _headImageView=[[UIImageView alloc]init];
        [self.contentView addSubview:_headImageView];
    }
    return _headImageView;
}
-(UIImageView *)vipImageView{
    if (_vipImageView==nil) {
        _vipImageView=[[UIImageView alloc]init];
        _vipImageView.image=[UIImage imageNamed:@"vip"];
        [self.contentView addSubview:_vipImageView];
    }
    return _vipImageView;
}
-(UIImageView *)detailImageView{
    if (_detailImageView==nil) {
        _detailImageView=[[UIImageView alloc]init];
        [self.contentView addSubview:_detailImageView];
    }
    return _detailImageView;
}
-(UILabel *)nameLabel{
    if (_nameLabel==nil) {
        _nameLabel=[[UILabel alloc]init];
        _nameLabel.font=[UIFont systemFontOfSize:16];
        [self.contentView addSubview:_nameLabel];
    }
    return _nameLabel;
}
-(UILabel *)textxLabel{
    if (_textxLabel==nil) {
        _textxLabel=[[UILabel alloc]init];
        _textxLabel.numberOfLines=0;
        _textxLabel.font=[UIFont systemFontOfSize:14];
        [self.contentView addSubview:_textxLabel];
    }
    return _textxLabel;
}

-(void)setStatusF:(StatusFrame *)statusF{
    _statusF=statusF;
    //1.载入数据
    [self loadModel];
    //2.设置位置
    [self setFrame];
}
/**
 *  设置数据
 */
-(void)loadModel{
    
    self.headImageView.image=[UIImage imageNamed:self.statusF.status.icon];
    self.nameLabel.text=self.statusF.status.name;
    self.textxLabel.text=self.statusF.status.text;
    //设置picture
    self.detailImageView.hidden=(self.statusF.status.picture==0);
    if (!self.detailImageView.hidden) {
        self.detailImageView.image=[UIImage imageNamed:self.statusF.status.picture];
    }

    //设置VIP的显示，名字是否红名
    self.vipImageView.hidden=[self.statusF.status.vip isEqual:@0];
    if (self.vipImageView.hidden) {
        self.nameLabel.textColor=[UIColor blackColor];
    }else{
        self.nameLabel.textColor=[UIColor redColor];
    }
    
}
/**
 *  设置位置
 */
-(void)setFrame{
    self.headImageView.frame=self.statusF.headImageViewFrame;
    self.nameLabel.frame=self.statusF.nameLabelFrame;
    self.vipImageView.frame=self.statusF.vipImageViewFrame;
    self.textxLabel.frame=self.statusF.textxLabelFrame;
    if (self.statusF.status.picture.length>0) {
        self.detailImageView.frame=self.statusF.detailImageViewFrame;
    }
}
@end
