//
//  MyPlanDetailViewController.m
//  Soccers
//
//  Created by goldendragon on 9/23/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "MyPlanDetailViewController.h"

@interface MyPlanDetailViewController ()

@end

@implementation MyPlanDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)onEditSave:(id)sender
{
    [_btnEditSave setImage:[UIImage imageNamed:@"save.png"] forState:UIControlStateNormal];
    
    _imgContent.image = [UIImage imageNamed:@"players.png"];
}
@end