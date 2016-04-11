//
//  TableViewCell.h
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Status.h"
@interface TableViewCell : UITableViewCell
@property(strong,nonatomic)UIImageView* headImageView;
@property(strong,nonatomic)UILabel* nameLabel;
@property(strong,nonatomic)UIImageView* vipImageView;
@property(strong,nonatomic)UILabel* textxLabel;
@property(strong,nonatomic)UIImageView* detailImageView;

@property(strong,nonatomic)Status* status;
@end
