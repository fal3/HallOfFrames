//
//  PictureTableViewCell.m
//  HallOfFrames
//
//  Created by alex fallah on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "PictureTableViewCell.h"

#import "MainViewController.h"


@interface PictureTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *centerImage;

@end

@implementation PictureTableViewCell

-(void)setup
{
    self.centerImage.image = self.picture.image;
    self.contentView.backgroundColor = self.picture.frameColor;
    NSLog(@"%@", self.picture.frameColor.description);
}

#pragma mark - ColorSelectionViewControl methods

-(void)colorSelectionViewController:(id)viewController didSelectColor:(UIColor *)color {

    self.contentView.backgroundColor = color;
    self.picture.frameColor = color;
}


@end
