//
//  CategViewController.m
//  babatunde ios project
//
//  Created by macadmin on 2014-07-25.
//  Copyright (c) 2014 macadmin. All rights reserved.
//

#import "CategViewController.h"

@interface CategViewController ()

@end

@implementation CategViewController


-(IBAction)button1:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category1SelectedNumber forKey:@"categorySaved"];
    
    
}
-(IBAction)button2:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category2SelectedNumber forKey:@"categorySaved"];
    
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    
    Category1Number = arc4random()%3;
    Category2Number = arc4random()%3;
    
    switch (Category1Number) {
        case 0:
            [Category1 setTitle:@"sport" forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        case 1:
            [Category1 setTitle:@"films" forState:UIControlStateNormal];
            Category1SelectedNumber = 2;
            break;
        case 2:
            [Category1 setTitle:@"music" forState:UIControlStateNormal];
            Category1SelectedNumber = 3;
            break;
            
        default:
            break;
    }
    
    switch (Category2Number) {
        case 0:
            [Category2 setTitle:@"Games" forState:UIControlStateNormal];
            Category2SelectedNumber = 4;
            break;
        case 1:
            [Category2 setTitle:@"Geography" forState:UIControlStateNormal];
            Category2SelectedNumber = 5;
            break;
        case 2:
            [Category2 setTitle:@"History" forState:UIControlStateNormal];
            Category2SelectedNumber = 6;
            break;
            
        default:
            break;
    }
    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
