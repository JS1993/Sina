//
//  ViewController.m
//  Sina
//
//  Created by  江苏 on 16/4/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "StatusFrame.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView* tableView;
@property(nonatomic,strong)NSArray* status;
@end

@implementation ViewController

-(UITableView *)tableView{
    if (_tableView==nil) {
        _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

-(NSArray *)status{
    if (_status==nil) {
        _status=[StatusFrame statusFrame];
    }
    return _status;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self tableView];
}
#pragma mark-tableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.status.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier=@"Cell";
    TableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.statusF=self.status[indexPath.row];
    return cell;
}

#pragma mark-tableViewDelegate
//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self.status[indexPath.row] cellHight];
}
@end
