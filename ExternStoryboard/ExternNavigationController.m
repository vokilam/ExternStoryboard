//
//  StoryboardNavigationController.m
//  test-storyboard-split
//
//  Created by Paul Malikov on 10/11/13.
//  Copyright (c) 2013 Paul Malikov. All rights reserved.
//

#import "ExternNavigationController.h"

@implementation ExternNavigationController

- (void)awakeFromNib
{
    NSAssert(self.storyboardName, @"storyboardName is required");
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:self.storyboardName bundle:nil];
    UIViewController *vc = self.sceneIdentifier
        ? [storyboard instantiateViewControllerWithIdentifier:self.sceneIdentifier]
        : [storyboard instantiateInitialViewController];
    
    self.viewControllers = @[vc];
}

@end
