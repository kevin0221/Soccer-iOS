//
//  MyAccountViewController.h
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyAccountViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgPhoto;
@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtAddress;
@property (strong, nonatomic) IBOutlet UITextField *txtPhone;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtUrl;
@property (strong, nonatomic) IBOutlet UITextView *txtDetail;

@property (strong, nonatomic) IBOutlet UIButton *btnSave;


- (IBAction)onSave:(id)sender;


-(void) setEditable:(BOOL)bEditable;


@end
