//
//  StoryboardNavigationController.h
//  test-storyboard-split
//
//  Created by Paul Malikov on 10/11/13.
//  Copyright (c) 2013 Paul Malikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExternNavigationController : UINavigationController

@property (strong, nonatomic) NSString *storyboardName;
@property (strong, nonatomic) NSString *sceneIdentifier;

@end
