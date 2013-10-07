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

- (UIColor *)colorForTranslucency{
    CGFloat hue = 0, saturation = 0, brightness = 0, alpha = 0;
    [self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    return [UIColor colorWithHue:hue saturation:1 brightness:brightness*0.5 alpha:alpha];
}

@end
