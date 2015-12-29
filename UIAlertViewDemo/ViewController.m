//
//  ViewController.m
//  UIAlertViewDemo
//
//  Created by Leo on 15/12/29.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "ViewController.h"

#define KEY_WINDOW  [UIApplication sharedApplication].keyWindow

@interface ViewController () <UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Title"
                                                        message:@"message"
                                                       delegate:self
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil, nil];
    
    NSLog(@"origin key window: %p", KEY_WINDOW);
    
    [alertView show];
}

#pragma mark - UIAlertView Delegate

/**
 *  点 alertView 上面的 btn 时调用，alertView 还在
 */
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSLog(@"when clicked key window: %p", KEY_WINDOW);
}

/**
 *  alertView 将要消失时调用
 */
- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    NSLog(@"alert view will dismiss key window: %p", KEY_WINDOW);
}
/**
 *  alertView 已经消失时调用
 */
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    NSLog(@"alert view did dismiss key window: %p", KEY_WINDOW);
}

@end
