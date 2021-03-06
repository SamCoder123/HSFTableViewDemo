//
//  VC3.m
//  HSFDemo
//
//  Created by JuZhenBaoiMac on 2017/6/23.
//  Copyright © 2017年 JuZhenBaoiMac. All rights reserved.
//

#import "VC3.h"

#import "VC3Cell.h"

@interface VC3 ()

@end

@implementation VC3

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册cell
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([VC3Cell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([VC3Cell class])];
}

#pragma mark -UITableViewDelegate,UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    VC3Cell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([VC3Cell class]) forIndexPath:indexPath];
    cell.title.text = [NSString stringWithFormat:@"TITLE(%ld)",(long)indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
