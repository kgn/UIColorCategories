//
//  UIColor+Modify.m
//  UIColorCategory
//
//  Created by David Keegan on 9/24/13.
//  Copyright (c) 2013 1kLabs, Inc. All rights reserved.
//

#import "UIColor+Modify.h"
#import "UIColor+Components.h"

@implementation UIColor(Modify)

- (UIColor *)invertedColor{
    NSArray *components = [self componentArray];
    return [UIColor colorWithRed:1-[components[0] doubleValue] green:1-[components[1] doubleValue] blue:1-[components[2] doubleValue] alpha:[components[3] doubleValue]];
}

@end
