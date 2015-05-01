//
//  GMCreateAccountViewController.h
//  NSUserDefaultsPractice
//
//  Created by ED on 5/1/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import <UIKit/UIKit.h>
#define USER_NAME @"username"
#define USER_PASSWORD @"password"


@protocol  GMCreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface GMCreateAccountViewController : UIViewController


@property (weak, nonatomic) id <GMCreateAccountViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
