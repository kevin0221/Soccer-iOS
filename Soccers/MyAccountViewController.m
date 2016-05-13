//
//  MyAccountViewController.m
//  Soccers
//
//  Created by goldendragon on 9/22/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "MyAccountViewController.h"

@interface MyAccountViewController ()

@end

@implementation MyAccountViewController

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

- (IBAction)onSave:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"Account Updates Saved!" delegate:self cancelButtonTitle:@"Closed" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void) setEditable:(BOOL)bEditable
{
    if (bEditable)
    {
        [_txtName setEnabled:YES];
        [_txtName setBorderStyle:UITextBorderStyleRoundedRect];
        
        [_txtAddress setEnabled:YES];
        [_txtAddress setBorderStyle:UITextBorderStyleRoundedRect];
        
        [_txtPhone setEnabled:YES];
        [_txtPhone setBorderStyle:UITextBorderStyleRoundedRect];
       
        [_txtEmail setEnabled:YES];
        [_txtEmail setBorderStyle:UITextBorderStyleRoundedRect];
        
        [_txtUrl setEnabled:YES];
        [_txtUrl setBorderStyle:UITextBorderStyleRoundedRect];
        
        
        [_txtDetail setEditable:YES];
        _txtDetail.layer.borderWidth = 1.0f;
        _txtDetail.layer.borderColor = [[UIColor grayColor] CGColor];
        _txtDetail.layer.cornerRadius = 8.0f;
        
        [_btnSave setHidden:NO];
        
    }
    else
    {
        [_txtName setEnabled:NO];
        [_txtName setBorderStyle:UITextBorderStyleNone];
        
        [_txtAddress setEnabled:NO];
        [_txtAddress setBorderStyle:UITextBorderStyleNone];
        
        [_txtPhone setEnabled:NO];
        [_txtPhone setBorderStyle:UITextBorderStyleNone];
        
        [_txtEmail setEnabled:NO];
        [_txtEmail setBorderStyle:UITextBorderStyleNone];
        
        [_txtUrl setEnabled:NO];
        [_txtUrl setBorderStyle:UITextBorderStyleNone];
        
        [_txtDetail setEditable:NO];
        [_btnSave setHidden:YES];
        
    }
    
    
}
@end
