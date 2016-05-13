//
//  MainViewController.h
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAccountViewController.h"


@interface MainViewController : UIViewController
{
    UIViewController *activeViewController;
    MyAccountViewController *myAccountViewController;
    
}

@property (strong, nonatomic) IBOutlet UIButton *btnEdit;
@property (strong, nonatomic) IBOutlet UIButton *btnMyAccount;
@property (strong, nonatomic) IBOutlet UIButton *btnMyPlan;
@property (strong, nonatomic) IBOutlet UIButton *btnMyExcercises;

@property (strong, nonatomic) IBOutlet UIView *contentView;


- (IBAction)onEdit:(id)sender;
- (IBAction)onMyAccount:(id)sender;
- (IBAction)onMyPlans:(id)sender;
- (IBAction)onMyExcercises:(id)sender;


@end
