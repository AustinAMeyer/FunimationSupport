//
//  ViewController.h
//  FunimationSupportContact
//
//  Created by Austin Meyer on 7/20/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funimationLabel;
- (IBAction)callSupport:(id)sender;
- (IBAction)emailSupport:(id)sender;

@end

