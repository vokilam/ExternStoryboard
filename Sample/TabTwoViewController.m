//
//  TabTwoViewController.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/4/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "TabTwoViewController.h"

@interface TabTwoViewController ()

@end

@implementation TabTwoViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindToTabTwo:(UIStoryboardSegue*)segue {
    NSLog(@"source: %@, dest: %@", segue.sourceViewController, segue.destinationViewController);
}

@end
