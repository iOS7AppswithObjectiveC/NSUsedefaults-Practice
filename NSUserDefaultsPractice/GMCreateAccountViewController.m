//
//  GMCreateAccountViewController.m
//  NSUserDefaultsPractice
//
//  Created by ED on 5/1/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import "GMCreateAccountViewController.h"

@interface GMCreateAccountViewController ()

@end

@implementation GMCreateAccountViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
}

- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ((self.usernameTextField.text.length != 0) && (self.passwordTextField.text.length != 0) && [self.passwordTextField.text isEqualToString:self.confirmPasswordField.text]){
        
    [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
    [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self.delegate didCreateAccount];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    }
    
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
    
}
@end
