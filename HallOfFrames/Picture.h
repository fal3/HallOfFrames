//
//  Picture.h
//  HallOfFrames
//
//  Created by alex fallah on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *frameColor;


-(instancetype)initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor;


@end
