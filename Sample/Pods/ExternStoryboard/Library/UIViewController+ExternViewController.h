//
//  UIViewController+ExternViewController.h
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ExternViewController)

@property (strong, nonatomic) NSString *storyboardName;
@property (strong, nonatomic) NSString *sceneIdentifier;

@end
