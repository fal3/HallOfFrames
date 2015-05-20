//
//  ViewController.m
//  HallOfFrames
//
//  Created by alex fallah on 5/20/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "MainViewController.h"
#import "Picture.h"
#import "PictureTableViewCell.h"


@interface MainViewController () <PictureTableViewCellDelegate,UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *pictures;
@end

@implementation MainViewController

- (void)viewDidLoad {

    //appending images to an array
    [super viewDidLoad];
    self.pictures = [NSMutableArray new];
    NSArray *picNames = @[@"beyonce", @"drake",@"max",@"miley",@"sasha"];
    for (NSString *pic in picNames) {
        UIImage *image = [UIImage imageNamed:pic];
        Picture *picture = [[Picture alloc]initWithImage:image withFrameColor:[UIColor redColor]];
        [self.pictures addObject:picture];
    }

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCell" forIndexPath:indexPath];
    Picture *picture = [self.pictures objectAtIndex:indexPath.row];
    cell.picture = picture;
    [cell setCenterImage];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pictures.count;
}




@end
