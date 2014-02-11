//
//  UIColor+Hex.h
//  UIColorCategory
//
//  Created by David Keegan on 8/8/13.
//  Copyright (c) 2013 1kLabs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Hex)

+ (UIColor *)colorWithHex:(UInt32)hex;
+ (UIColor *)colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

@end
