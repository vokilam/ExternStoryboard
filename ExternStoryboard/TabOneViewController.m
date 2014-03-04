//
//  TabOneViewController.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "TabOneViewController.h"

@interface TabOneViewController ()

@end

@implementation TabOneViewController

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

- (IBAction)setRightBar:(id)sender {
    NSMutableArray *newItems = [self.navigationItem.rightBarButtonItems mutableCopy];
    if (!newItems) {
        newItems = [NSMutableArray new];
    }
    [newItems addObjectsFromArray:@[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:nil]]];
    self.navigationItem.rightBarButtonItems = newItems;
}

-(IBAction)unwindToTabOne:(UIStoryboardSegue*)segue {
    NSLog(@"source: %@, dest: %@", segue.sourceViewController, segue.destinationViewController);
}


@end
