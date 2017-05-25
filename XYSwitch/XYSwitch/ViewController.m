//
//  ViewController.m
//  XYSwitch
//
//  Created by DXY on 2017/5/25.
//  Copyright © 2017年 DXY. All rights reserved.
//

#import "ViewController.h"
#import "XYSwitch.h"
#import "Masonry.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    XYSwitch * mySwitch = [[XYSwitch alloc] init];
    [self.view addSubview:mySwitch];
    
    
    [mySwitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(100);
        make.left.offset(20);
        make.width.mas_equalTo(38);
        make.height.mas_equalTo(19);
    }];
    
    
    mySwitch.changeStateBlock = ^(BOOL isOn) {
        NSLog(@"Controller:%zd",isOn);
    };
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
