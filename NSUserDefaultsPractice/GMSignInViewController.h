//
//  GMSignInViewController.h
//  NSUserDefaultsPractice
//
//  Created by ED on 5/1/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMCreateAccountViewController.h"

@interface GMSignInViewController : UIViewController <GMCreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender;

- (IBAction)loginButtonPressed:(UIButton *)sender;

@end
