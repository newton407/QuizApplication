//
//  CategViewController.h
//  babatunde ios project
//
//  Created by macadmin on 2014-07-25.
//  Copyright (c) 2014 macadmin. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;
int Category1SelectedNumber;
int Category2SelectedNumber;


@interface CategViewController : UIViewController
{
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
}
-(IBAction)button1:(id)sender;
-(IBAction)button2:(id)sender;

@end
