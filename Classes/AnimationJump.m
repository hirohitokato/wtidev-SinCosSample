//
//  AnimationJump.m
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import "AnimationJump.h"

@implementation AnimationJump

@synthesize radius;

- (void) process {
   double theta = M_PI / 180 * count;

   CGPoint pt;
   double y = fabs(sin(theta));
   pt.x = view.center.x + 1;
   pt.y = 100 + y * radius;
   if(pt.x > 320) pt.x = 0;

   view.center = pt;
   if(count > 360) count = 0;
}

@end
