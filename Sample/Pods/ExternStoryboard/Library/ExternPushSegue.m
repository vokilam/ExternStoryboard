//
//  ExternStoryboardSegue.m
//  test-segue-multiple-storiboards
//
//  Created by Paul Malikov on 10/31/13.
//  Copyright (c) 2013 Paul Malikov. All rights reserved.
//

#import "ExternPushSegue.h"
#import "UIViewController+ExternViewController.h"

@implementation ExternPushSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
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
