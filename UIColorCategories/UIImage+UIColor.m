//
//  UIImage+UIColor.m
//  UIColorCategory
//
//  Created by David Keegan on 9/23/13.
//  Copyright (c) 2013 1kLabs, Inc. All rights reserved.
//

#import "UIImage+UIColor.h"

@implementation UIImage(UIColor)

- (UIColor *)averageColor{
    if(!self){
        return nil;
    }

    CGImageRef imageRef = [self CGImage];
    NSUInteger width = CGImageGetWidth(imageRef);
    NSUInteger height = CGImageGetHeight(imageRef);
    NSUInteger bitsMultiplier = CGImageGetBitsPerPixel(imageRef)/8;

    CGDataProviderRef provider = CGImageGetDataProvider(imageRef);
    NSData *data = CFBridgingRelease(CGDataProviderCopyData(provider));
    const uint8_t *bytes = [data bytes];

    NSUInteger colorCount = 0;
    CGFloat red = 0, green = 0, blue = 0;

    NSUInteger x = 0, y = 0;
    NSUInteger xOffset = 2, yOffset = 2;
    while(x < width){
        while(y < height){
            NSUInteger pixelIndex = (y*width+x)*bitsMultiplier;
            red += bytes[pixelIndex];
            green += bytes[pixelIndex+1];
            blue += bytes[pixelIndex+2];
            colorCount++;
            y += yOffset;
        }
        x += xOffset;
        y = 0;
    }

    CGFloat averageRed = red/colorCount;
    CGFloat averageGreen = green/colorCount;
    CGFloat averageBlue = blue/colorCount;

    return [UIColor colorWithRed:averageRed/255 green:averageGreen/255 blue:averageBlue/255 alpha:1];
}

@end
