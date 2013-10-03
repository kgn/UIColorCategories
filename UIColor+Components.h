//
//  UIColor+Components.h
//  UIColorCategory
//
//  Created by David Keegan on 9/15/13.
//  Copyright (c) 2013 David Keegan All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Components)

+ (UIColor *)colorWithColor:(UIColor *)color andAlpha:(CGFloat)alpha;

- (CGFloat)alphaComponent;
- (UIColor *)colorWithoutAlpha;
- (NSArray *)componentArray;

@end
