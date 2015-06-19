//
//  ViewController.m
//  Table
//
//  Created by MAEDA HAJIME on 2014/04/07.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource Method

// 設定（列数）
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
    
}

// 設定（行数）
- (NSInteger)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section {
    
    return 5;
   
}

// 設定（セル）
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // セルオブジェクト取得
    UITableViewCell *cell =
        [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                        forIndexPath:indexPath];
    // 設定（セル）
    cell.textLabel.text = @"BMW";
    cell.imageView.image = [UIImage imageNamed:@"car01"];
    
    return cell;
    
}

#pragma mark - UITableViewDelegate Method

//　（設定）ヘッダータイトル
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"BMW紹介";
}

//　（設定）フッタータイトル
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
    return @"BMW紹介終わり";
}

//　セル選択時
- (void)            tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@", cell.textLabel.text);
    
}

@end
