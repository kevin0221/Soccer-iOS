//
//  AddPlanExerciseViewController.m
//  Soccers
//
//  Created by goldendragon on 9/24/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "AddPlanExerciseViewController.h"

@interface AddPlanExerciseViewController ()

@end

@implementation AddPlanExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIColor *greenColor = [[UIColor alloc] initWithRed:10/255.0 green:167/255.0 blue:74/255.0 alpha:1.0f];
    _txtDetail.layer.borderWidth = 1.0f;
    _txtDetail.layer.borderColor = [greenColor CGColor];
    _txtDetail.layer.cornerRadius = 8.0f;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onNext:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"Save Plan Successfully!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
}
@end
