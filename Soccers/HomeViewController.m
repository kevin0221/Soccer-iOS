//
//  ViewController.m
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "HomeViewController.h"
#import "AppDelegate.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onFb:(id)sender
{
    if (popupView != nil)
        [popupView removeFromSuperview];
    
    UIWindow *mainWindow = (((AppDelegate*)[UIApplication sharedApplication].delegate).window);
    
    self.view.alpha = 0.5f;
    CGRect rect = self.view.frame;
    float width = rect.size.width - 20;
    popupView = [[UIImageView alloc] initWithFrame:CGRectMake(10, (rect.size.height - width)/2, width, width)];
    
    popupView.image = [UIImage imageNamed:@"facebook.png"];
    
    [mainWindow addSubview:popupView];
    
}

- (IBAction)onTwitter:(id)sender
{
    if (popupView != nil)
        [popupView removeFromSuperview];
    
    UIWindow *mainWindow = (((AppDelegate*)[UIApplication sharedApplication].delegate).window);
    
    self.view.alpha = 0.5f;
    CGRect rect = self.view.frame;
    float width = rect.size.width - 20;
    popupView = [[UIImageView alloc] initWithFrame:CGRectMake(10, (rect.size.height - width)/2, width, width)];
    
    popupView.image = [UIImage imageNamed:@"sign_in_twitter.png"];
    
    [mainWindow addSubview:popupView];
    
}

- (IBAction)onIn:(id)sender
{
    if (popupView != nil)
        [popupView removeFromSuperview];
    UIWindow *mainWindow = (((AppDelegate*)[UIApplication sharedApplication].delegate).window);
    
    self.view.alpha = 0.5f;
    CGRect rect = self.view.frame;
    float width = rect.size.width - 80;
    popupView = [[UIImageView alloc] initWithFrame:CGRectMake(40, (rect.size.height - width*1.5f)/2, width, width*1.5f)];
    
    popupView.image = [UIImage imageNamed:@"sign_up_linkedin.png"];
    
    [mainWindow addSubview:popupView];
}

- (IBAction)onGoogle:(id)sender
{
    if (popupView != nil)
        [popupView removeFromSuperview];
    
    UIWindow *mainWindow = (((AppDelegate*)[UIApplication sharedApplication].delegate).window);
    
    self.view.alpha = 0.5f;
    CGRect rect = self.view.frame;
    float width = rect.size.width - 20;
    popupView = [[UIImageView alloc] initWithFrame:CGRectMake(10, (rect.size.height - width)/2, width, width)];
    
    popupView.image = [UIImage imageNamed:@"sign_up_google.png"];
    
    [mainWindow addSubview:popupView];
}

- (IBAction)onMail:(id)sender
{
    _mainView.hidden = YES;
    _mailSignView.hidden = NO;
}

- (IBAction)onForgotPassword:(id)sender
{
    _signinview.hidden = YES;
    _forgotPassView.hidden = NO;
}

- (IBAction)onSubmit:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your Password Has Been Sent!" message:@"We have sent your password to your email if you do not recieve in a timely manner, then Please Contact Us." delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    [alert show];
    _forgotPassView.hidden = YES;
    _signinview.hidden = NO;
}

- (IBAction)onMailSignUpSubmit:(id)sender
{
    
    _mainView.hidden = NO;
    _mailSignView.hidden = YES;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"You Have Successfully Signed Up!" delegate:self cancelButtonTitle:@"Closed" otherButtonTitles:nil, nil];
    [alert show];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (popupView != nil)
    {
        [popupView removeFromSuperview];
        self.view.alpha = 1.0f;
    }
    
}


@end
