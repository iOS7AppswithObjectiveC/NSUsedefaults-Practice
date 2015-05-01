//
//  GMSignInViewController.m
//  NSUserDefaultsPractice
//
//  Created by ED on 5/1/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import "GMSignInViewController.h"

@interface  GMSignInViewController ()

@end

@implementation GMSignInViewController

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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[GMCreateAccountViewController class]]){
        GMCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}


- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
    
    
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
}

#pragma mark - GMCreateAccountViewController Delegate

-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
