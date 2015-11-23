//
//  ViewController.m
//  ZCGGrandientNaviBarAndStutesBarDemo
//
//  Created by LTMacMini on 15/11/23.
//  Copyright © 2015年 LTMacMini. All rights reserved.
//

#import "ViewController.h"
#import "ZCGGrandientStatusBar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZCGGrandientStatusBar* stutesBar = [[ZCGGrandientStatusBar alloc]initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 20)];
    stutesBar.style = 1;
    [self.navigationController.navigationBar addSubview:stutesBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
