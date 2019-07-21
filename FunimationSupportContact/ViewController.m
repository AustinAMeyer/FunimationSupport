//
//  ViewController.m
//  FunimationSupportContact
//
//  Created by Austin Meyer on 7/20/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
// #D8D8D8
- (void)viewDidLoad {
    [super viewDidLoad];
    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.borderColor = [UIColor colorWithRed:0.376 green:0.0 blue:0.827 alpha:1.0].CGColor;
    bottomBorder.borderWidth = 100;
    bottomBorder.frame = CGRectMake(1, CGRectGetHeight(_funimationLabel.frame)-1, CGRectGetWidth(_funimationLabel.frame), 3);
    _funimationLabel.clipsToBounds = YES;
    [_funimationLabel.layer addSublayer:bottomBorder];
}


- (IBAction)callSupport:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    [application openURL:[NSURL URLWithString: @"tel:11111111111"] options:@{} completionHandler:nil];
}

- (IBAction)emailSupport:(id)sender {
    NSString *recipients = @"mailto:help@funimation.com?subject=I need help";
    NSString *body = @"&body=HI, \n\n I need help with: \n\n Thank you!";
    
    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    email = [email stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email] options:@{} completionHandler:nil];
}

@end
