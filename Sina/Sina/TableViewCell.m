//
//  TableViewCell.m
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
//-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//    
//}
//-(void)setStatus:(Status *)status{
//    _status=status;
//    self.headImageView.image=[UIImage imageNamed:status.icon];
//    self.nameLabel.text=status.name;
//    self.textxLabel.text=status.text;
//    self.vipImageView.image=[UIImage imageNamed:@"vip"];
//}
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
        _textxLabel.font=[UIFont systemFontOfSize:14];
        [self.contentView addSubview:_textxLabel];
    }
    return _textxLabel;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
