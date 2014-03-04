//
//  ExternModalStoryboardSegue.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "ExternModalStoryboardSegue.h"

@implementation ExternModalStoryboardSegue

- (void)perform {
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end
