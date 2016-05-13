//
//  MyPlanDetailViewController.h
//  Soccers
//
//  Created by goldendragon on 9/23/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyPlanDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnEditSave;
@property (strong, nonatomic) IBOutlet UIImageView *imgContent;


- (IBAction)onEditSave:(id)sender;

@end
