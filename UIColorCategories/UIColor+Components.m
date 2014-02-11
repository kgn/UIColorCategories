//
//  UIColor+Components.m
//  UIColorCategory
//
//  Created by David Keegan on 9/15/13.
//  Copyright (c) 2013 David Keegan All rights reserved.
//

#import "UIColor+Components.h"

@implementation UIColor(Components)

- (CGFloat)alphaComponent{
    return CGColorGetAlpha([self CGColor]);
}

- (UIColor *)colorWithoutAlpha{
    return [UIColor colorWithColor:self andAlpha:1];
}

+ (UIColor *)colorWithColor:(UIColor *)color andAlpha:(CGFloat)alpha{
    NSArray *component = [color componentArray];
    return [UIColor colorWithRed:[component[0] doubleValue] green:[component[1] doubleValue] blue:[component[2] doubleValue] alpha:alpha];
}

- (NSArray *)componentArray{
    CGFloat red, green, blue, alpha;
    const CGFloat *components = CGColorGetComponents([self CGColor]);
    if(CGColorGetNumberOfComponents([self CGColor]) == 2){
        red = components[0];
        green = components[0];
        blue = components[0];
        alpha = components[1];
    }else{
        red = components[0];
        green = components[1];
        blue = components[2];
        alpha = components[3];
    }
    return @[@(red), @(green), @(blue), @(alpha)];
}

@end
