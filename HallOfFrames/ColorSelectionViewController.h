//
//  ColorSelectionViewController.h
//  HallOfFrames
//
//  Created by Gretchen Walker on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorSelectionViewControllerDelegate

-(void)colorSelectionViewController:(id)viewController didSelectColor:(UIColor *)color;

@end

@interface ColorSelectionViewController : UIViewController

@property id<ColorSelectionViewControllerDelegate> delegate;

@end
