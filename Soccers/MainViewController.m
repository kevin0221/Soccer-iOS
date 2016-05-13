//
//  MainViewController.m
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "MainViewController.h"
#import "MyPlanTableViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    myAccountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyAccountViewController"];
    [self updateActiveViewController:myAccountViewController];
    [myAccountViewController setEditable:NO];
    [_btnEdit setHidden:NO];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onEdit:(id)sender
{
    if (myAccountViewController != nil)
    {
        [myAccountViewController setEditable:YES];
    }
}


- (IBAction)onMyPlans:(id)sender
{
    [_btnEdit setHidden:YES];
    
    [self HideEdit];
    
    UIColor *greenColor = [[UIColor alloc] initWithRed:10/255.0 green:167/255.0 blue:74/255.0 alpha:1.0f];
    
    _btnMyAccount.backgroundColor = greenColor;
    _btnMyExcercises.backgroundColor = greenColor;
    _btnMyPlan.backgroundColor = [UIColor whiteColor];
    
    [_btnMyAccount setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnMyPlan setTitleColor:greenColor forState:UIControlStateNormal];
    [_btnMyExcercises setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
    UINavigationController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"PlanEditNavigationController"];
    [self updateActiveViewController:controller];
    
   
    
}

- (IBAction)onMyExcercises:(id)sender
{
    [_btnEdit setHidden:YES];
    
    [self HideEdit];
    
    UIColor *greenColor = [[UIColor alloc] initWithRed:10/255.0 green:167/255.0 blue:74/255.0 alpha:1.0f];
    
    _btnMyAccount.backgroundColor = greenColor;
    _btnMyExcercises.backgroundColor = [UIColor whiteColor];
    _btnMyPlan.backgroundColor = greenColor;
    
    [_btnMyAccount setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnMyPlan setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnMyExcercises setTitleColor:greenColor forState:UIControlStateNormal];
    
    UINavigationController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"ExerciseNaviationController"];
    [self updateActiveViewController:controller];
    
    
}

// My Account

- (IBAction)onMyAccount:(id)sender
{
    UIColor *greenColor = [[UIColor alloc] initWithRed:10/255.0 green:167/255.0 blue:74/255.0 alpha:1.0f];
    
    _btnMyAccount.backgroundColor = [UIColor whiteColor];
    _btnMyPlan.backgroundColor = greenColor;
    _btnMyExcercises.backgroundColor = greenColor;
    
    [_btnMyAccount setTitleColor:greenColor forState:UIControlStateNormal];
    [_btnMyExcercises setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnMyPlan setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
    myAccountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyAccountViewController"];
    [self updateActiveViewController:myAccountViewController];
    
    [myAccountViewController setEditable:NO];
    
    [self ShowEdit];
    
}

/////////////

-(void)HideEdit
{
    CGRect rect = _btnMyPlan.superview.bounds;
    float height = rect.size.height;
    float width = (rect.size.width-2) / 3.0f;
    
    CGRect btnRect = CGRectMake(0, 0, width, height);
    [_btnMyAccount setBounds:btnRect];
    [_btnMyAccount setCenter:CGPointMake(width *0.5f, height *0.5f)];
    
    [_btnMyPlan setBounds:btnRect];
    [_btnMyPlan setCenter:CGPointMake(width * 1.5f+1, height * 0.5f)];
    
    [_btnMyExcercises setBounds:btnRect];
    [_btnMyExcercises setCenter:CGPointMake(width * 2.5f+2, height * 0.5f)];
}

-(void)ShowEdit
{
    [_btnEdit setHidden:NO];
    
    CGRect rect = _btnEdit.superview.bounds;
    CGRect editRect = _btnEdit.frame;
    
    float leftX = editRect.size.width + 6;
    float height = rect.size.height;
    float width = (rect.size.width-editRect.size.width-8) / 3.0f;
    
    CGRect btnRect = CGRectMake(0, 0, width, height);
    [_btnMyAccount setBounds:btnRect];
    [_btnMyAccount setCenter:CGPointMake(leftX + width *0.5f, height *0.5f)];
    
    [_btnMyPlan setBounds:btnRect];
    [_btnMyPlan setCenter:CGPointMake(leftX + width * 1.5f + 1, height * 0.5f)];
    
    [_btnMyExcercises setBounds:btnRect];
    [_btnMyExcercises setCenter:CGPointMake(leftX + width * 2.5f + 2, height * 0.5f)];
    
    
    
}




///////////Container change/////////

-(void)updateActiveViewController:(UIViewController*)viewController
{
    [self removeInactiveViewController];
    if (viewController != nil)
    {
        activeViewController = viewController;
        [self addChildViewController:activeViewController];
        activeViewController.view.frame = _contentView.bounds;
        [_contentView addSubview:activeViewController.view];
        
        [activeViewController didMoveToParentViewController:self];
        
    }
}

-(void) removeInactiveViewController
{
    if (activeViewController != nil)
    {
        [activeViewController willMoveToParentViewController:nil];
        [activeViewController.view removeFromSuperview];
        
        [activeViewController removeFromParentViewController];
    }
}

@end
