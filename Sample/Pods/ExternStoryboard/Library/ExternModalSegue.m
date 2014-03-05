//
//  ExternModalStoryboardSegue.m
//  ExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//  Copyright (c) 2014 Paul Malikov. All rights reserved.
//

#import "ExternModalSegue.h"

@implementation ExternModalSegue

- (void)perform {
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end
