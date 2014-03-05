//
//  UINavigationController+ExternStoryboard.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "UINavigationController+ExternStoryboard.h"
#import <JRSwizzle.h>
#import "UIViewController+ExternViewController.h"

@implementation UINavigationController (ExternStoryboard)

+(void)load {
    NSError *error;
    if (![self jr_swizzleMethod:@selector(awakeFromNib) withMethod:@selector(awakeFromNibReplacement) error:&error]) {
        NSLog(@"Error swizzling UINavigationController awakeFromNib: %@", [error localizedDescription]);
    }
}

-(void)awakeFromNibReplacement {
    //call original implementation
    [self awakeFromNibReplacement];
    
    if (self.storyboardName) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:self.storyboardName bundle:nil];
        UIViewController *vc = self.sceneIdentifier
        ? [storyboard instantiateViewControllerWithIdentifier:self.sceneIdentifier]
        : [storyboard instantiateInitialViewController];
    
        self.viewControllers = @[vc];
    }
}


@end
