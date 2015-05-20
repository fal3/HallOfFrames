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

-(void)setCenterImage
{
    self.centerImage.image = self.picture.image;
}


@end
