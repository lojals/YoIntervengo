//
//  NVControllerGeneric.m
//  eldorado
//
//  Created by Jorge Raul Ovalle Zuleta on 5/12/14.
//  Copyright (c) 2014 jomobile.co. All rights reserved.
//

#import "NVControllerGeneric.h"

@interface NVControllerGeneric ()

@end

@implementation NVControllerGeneric

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
    [super viewDidLoad];
    self.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationItem setHidesBackButton:YES];
    
    //self.navigationBar.shadowImage = [UIImage new];
    //[self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //[self.navigationBar setShadowImage:[UIImage new]];
    [self.navigationBar setBackgroundColor:[UIColor colorWithRed:0.259 green:0.263 blue:0.216 alpha:1]];
    [self.navigationBar setTranslucent:NO];

   // self.navigationController.navigationBar.clipsToBounds = YES;
    //[self.navigationBar setShadowImage:nil];
    
     [self.navigationBar.backItem.backBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"helveticaneuelight" size:15.0], NSFontAttributeName,nil] forState:UIControlStateNormal];
    
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void) viewWillAppear:(BOOL)animated{
    self.navigationItem.hidesBackButton = YES;
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
