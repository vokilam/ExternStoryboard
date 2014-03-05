//
//  UIViewController+ExternViewController.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "UIViewController+ExternViewController.h"
#import <ObjcAssociatedObjectHelpers.h>

@implementation UIViewController (ExternViewController)

SYNTHESIZE_ASC_OBJ(storyboardName, setStoryboardName);
SYNTHESIZE_ASC_OBJ(sceneIdentifier, setSceneIdentifier);

@end
