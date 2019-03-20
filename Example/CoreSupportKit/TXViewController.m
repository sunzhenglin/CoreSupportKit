//
//  TXViewController.m
//  CoreSupportKit
//
//  Created by acct<blob>=0xE7A9BAE781B5E699BAE883BD on 02/26/2019.
//  Copyright (c) 2019 acct<blob>=0xE7A9BAE781B5E699BAE883BD. All rights reserved.
//

#import "TXViewController.h"
#import "WSDatePickerView.h"
#import "NSDate+Extension.h"
@interface TXViewController ()

@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton * btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(0, 0, 200, 50);
    btn.center = self.view.center;
    [self.view addSubview:btn];
    [btn setTitle:@"点击" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(selectAction:) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void)selectAction:(UIButton *)sender{
    [self.view endEditing:YES];
    NSDateFormatter *minDateFormater = [[NSDateFormatter alloc] init];
    [minDateFormater setDateFormat:@"yyyy-MM-dd"];
    NSDate *scrollToDate = [minDateFormater dateFromString:[self getCurrentTime]];
    __weak typeof(self)weakSelf = self;
    WSDatePickerView *datepicker = [[WSDatePickerView alloc] initWithDateStyle:DateStyleShowYearMonthDay scrollToDate:scrollToDate CompleteBlock:^(NSDate *selectDate) {
        NSString *date = [selectDate stringWithFormat:@"yyyy-MM-dd"];
        NSLog(@"选择的日期：%@",date);
        //        [weakSelf.productionDateBtn setTitle:date forState:(UIControlStateNormal)];
        //        [weakSelf.productionDateBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    }];
    datepicker.dateLabelColor = [UIColor greenColor];///年-月-日-时-分 颜色
    datepicker.datePickerColor = [UIColor blackColor];//滚轮日期颜色
    datepicker.doneButtonColor = [UIColor greenColor];//确定按钮的颜色
    datepicker.hideBackgroundYearLabel = YES;//隐藏背景年份文字
    [datepicker show];
}

/*获取当地时间*/
- (NSString *)getCurrentTime {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate date]];
    return dateTime;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
