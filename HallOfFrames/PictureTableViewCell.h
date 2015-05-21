//
//  PictureTableViewCell.h
//  HallOfFrames
//
//  Created by alex fallah on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"
#import "ColorSelectionViewController.h"

@protocol PictureTableViewCellDelegate <NSObject>

//methods



@end

@interface PictureTableViewCell : UITableViewCell <ColorSelectionViewControllerDelegate>

@property Picture *picture;
@property id<PictureTableViewCellDelegate>delegate;

-(void)setup;


@end
