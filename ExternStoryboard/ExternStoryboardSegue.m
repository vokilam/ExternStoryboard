//
//  ExternStoryboardSegue.m
//  test-segue-multiple-storiboards
//
//  Created by Paul Malikov on 10/31/13.
//  Copyright (c) 2013 Paul Malikov. All rights reserved.
//

#import "ExternStoryboardSegue.h"
#import "ExternViewController.h"

@implementation ExternStoryboardSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(ExternViewController *)destination
{
    NSAssert(destination.storyboardName, @"storyboardName is required");
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:destination.storyboardName bundle:nil];
    UIViewController *vc = destination.sceneIdentifier
        ? [storyboard instantiateViewControllerWithIdentifier:destination.sceneIdentifier]
        : [storyboard instantiateInitialViewController];
    
    return [super initWithIdentifier:identifier source:source destination:vc];
}

- (void)perform
{
    [[self.sourceViewController navigationController] pushViewController:self.destinationViewController animated:YES];
}

@end
