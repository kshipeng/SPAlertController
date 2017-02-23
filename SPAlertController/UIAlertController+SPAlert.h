//
//  UIAlertController+SPAlert.h
//  SPUncaughtExceptionHandler
//
//  Created by 康世朋 on 2017/2/23.
//  Copyright © 2017年 SP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (SPAlert)
+ (nonnull UIAlertController *)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle handler:(void (^_Nullable)(UIAlertAction * _Nonnull action))handler cancelButtonTitle:(nullable NSString *)cancelButtonTitle otherButtonTitles:(nullable NSString *)otherButtonTitles, ...NS_REQUIRES_NIL_TERMINATION NS_EXTENSION_UNAVAILABLE_IOS("Use UIAlertController instead.");
@end
