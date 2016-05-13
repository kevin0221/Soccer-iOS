//
//  MyExerciseTableViewCell.m
//  Soccers
//
//  Created by goldendragon on 9/23/15.
//  Copyright (c) 2015 goldendragon. All rights reserved.
//

#import "MyExerciseTableViewCell.h"

@implementation MyExerciseTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onRecycleBin:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"Are you sure want to do this?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Confirm", nil];
    [alert show];
}
@end
