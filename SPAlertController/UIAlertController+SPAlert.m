//
//  UIAlertController+SPAlert.m
//  SPUncaughtExceptionHandler
//
//  Created by 康世朋 on 2017/2/23.
//  Copyright © 2017年 SP. All rights reserved.
//

#import "UIAlertController+SPAlert.h"

@implementation UIAlertController (SPAlert)
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle handler:(void (^ _Nullable)(UIAlertAction *))handler cancelButtonTitle:(nullable NSString *)cancelButtonTitle otherButtonTitles:(nullable NSString *)otherButtonTitles, ... {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:handler];
    [alertController addAction:alertAction];
    
    //定义一个指向个数可变的参数列表指针
    va_list args ; // typedef char* va_list;
    
    //对args（列表指针）进行初始化,它指向可变参数表里面的第一个参数\
    第一个参数是args本身，第二个参数是在变参表前面紧挨着的一个变量,即“...”之前的那个参数；
    va_start(args, otherButtonTitles);
    if (otherButtonTitles) {
        NSString *otherString;
        //NSLog(@"%@",otherButtonTitles); //输出第一个字符串
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:otherButtonTitles style:UIAlertActionStyleDefault handler:handler];
        
        [alertController addAction:alertAction];
        while (1) {
            //va_arg: 第二个参数是获取了类型。然后返回这个指定类型的值
            //并把args的位置指向变参表的下一个变量位置
            otherString = va_arg(args, NSString *);
            if (otherString == nil) {
                break;
            }else{
                //NSLog(@"%@",otherString);
                UIAlertAction *alertAction = [UIAlertAction actionWithTitle:otherString style:UIAlertActionStyleDefault handler:handler];
                
                [alertController addAction:alertAction];
            }
        }
    }
    //va_end(arg_ptr)：清空参数列表，并置参数指针arg_ptr无效
    //获取完成后，需要将指针关掉，以避免发生危险
    va_end(args);
    return alertController;
}

@end
