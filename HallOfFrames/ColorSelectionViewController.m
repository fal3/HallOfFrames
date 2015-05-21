//
//  ColorSelectionViewController.m
//  HallOfFrames
//
//  Created by Gretchen Walker on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "ColorSelectionViewController.h"
#import <UIKit/UIKit.h>

@interface ColorSelectionViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorDisplay;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@end

@implementation ColorSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.colorDisplay.backgroundColor = [self calculateColor];

}

- (IBAction)onSliderChanged:(UISlider *)sender {

    self.colorDisplay.backgroundColor = [self calculateColor];

}

- (IBAction)onSubmitPressed:(UIButton *)sender {

    [self.delegate colorSelectionViewController:self didSelectColor:self.colorDisplay.backgroundColor];
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(UIColor *)calculateColor {

    float redValue = self.redSlider.value;
    float greenValue = self.greenSlider.value;
    float blueValue = self.blueSlider.value;

    return [UIColor colorWithRed:redValue/255.0f green:greenValue/255.0f blue:blueValue/255.0f alpha:1.0f];

}

@end
