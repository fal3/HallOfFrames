//
//  Picture.m
//  HallOfFrames
//
//  Created by alex fallah on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor
{
    self = [super init];
    self.image = image;
    self.frameColor = frameColor;

    return self;
}

@end
