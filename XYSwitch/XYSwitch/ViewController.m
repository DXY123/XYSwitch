//
//  ViewController.m
//  XYSwitch
//
//  Created by DXY on 2017/5/25.
//  Copyright © 2017年 DXY. All rights reserved.
//

#import "ViewController.h"
#import "XYSwitch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    XYSwitch * mySwitch = [[XYSwitch alloc] initWithTextFont:[UIFont systemFontOfSize:13] OnText:@"bang" offText:@"biu" onBackGroundColor:nil offBackGroundColor:nil onButtonColor:nil offButtonColor:nil onTextColor:nil andOffTextColor:nil];
    [self.view addSubview:mySwitch];
    
    
    mySwitch.frame = CGRectMake(100, 100, 80, 40);
    
    mySwitch.changeStateBlock = ^(BOOL isOn) {
        NSLog(@"Controller:%zd",isOn);
    };
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
