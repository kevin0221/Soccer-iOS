//
//  ViewController.h
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
{
    UIImageView *popupView;
}


@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (strong, nonatomic) IBOutlet UIView *mailSignView;

@property (strong, nonatomic) IBOutlet UIView *signinview;
@property (strong, nonatomic) IBOutlet UIView *forgotPassView;

- (IBAction)onFb:(id)sender;
- (IBAction)onTwitter:(id)sender;
- (IBAction)onIn:(id)sender;
- (IBAction)onGoogle:(id)sender;
- (IBAction)onMail:(id)sender;
- (IBAction)onForgotPassword:(id)sender;

- (IBAction)onSubmit:(id)sender;

- (IBAction)onMailSignUpSubmit:(id)sender;
@end

