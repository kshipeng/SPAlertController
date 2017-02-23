//
//  ViewController.m
//  AlertController
//
//  Created by 康世朋 on 2017/2/23.
//  Copyright © 2017年 康世朋. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+SPAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)buttonAction:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"这是一个简单封装的Alert" preferredStyle:UIAlertControllerStyleAlert handler:^(UIAlertAction *action) {
        if ([action.title isEqualToString:@"取消"]) {
            NSLog(@"点击了>>>>取消");
        }
        if ([action.title isEqualToString:@"确定"]) {
            NSLog(@"点击了>>>>确定");
        }
        if ([action.title isEqualToString:@"ok"]) {
            NSLog(@"点击了>>>>ok");
        }
    } cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"ok", nil];
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
