//
//  UINavigationController+rotate.m
//  OrientationPOC
//
//  Created by Amit Jain on 22/06/14.
//  Copyright (c) 2014 Amit Jain. All rights reserved.
//

#import "UINavigationController+rotate.h"

@implementation UINavigationController (rotate)

- (BOOL)shouldAutorotate {
    if (self.topViewController != nil)
        return [self.topViewController shouldAutorotate];
    else
        return [super shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations {
    if (self.topViewController != nil)
        return [self.topViewController supportedInterfaceOrientations];
    else
        return [super supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    if (self.topViewController != nil)
        return [self.topViewController preferredInterfaceOrientationForPresentation];
    else
        return [super preferredInterfaceOrientationForPresentation];
}

@end
