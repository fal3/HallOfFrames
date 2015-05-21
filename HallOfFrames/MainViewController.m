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
#import "ColorSelectionViewController.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *pictures;
@property NSIndexPath *previouslySelected;
@end

@implementation MainViewController

- (void)viewDidLoad {

    //appending images to an array
    [super viewDidLoad];
    self.pictures = [NSMutableArray new];
    NSArray *picNames = @[@"beyonce", @"drake",@"Max",@"miley",@"sasha"];
    for (NSString *pic in picNames) {
        UIImage *image = [UIImage imageNamed:pic];
        Picture *picture = [[Picture alloc]initWithImage:image withFrameColor:[UIColor clearColor]];
        [self.pictures addObject:picture];
    }

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCell" forIndexPath:indexPath];
    Picture *picture = [self.pictures objectAtIndex:indexPath.row];
    cell.picture = picture;
    [cell setup];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pictures.count;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    PictureTableViewCell *cell = (PictureTableViewCell *)[self.tableView cellForRowAtIndexPath:indexPath];

    ColorSelectionViewController *destinationVC = segue.destinationViewController;
    destinationVC.delegate = cell;
    if (self.previouslySelected) {
        [self.tableView reloadRowsAtIndexPaths:@[self.previouslySelected] withRowAnimation:UITableViewRowAnimationNone];
    }
    self.previouslySelected = indexPath;
}


//-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
//
//    NSLog(@"%@", [self.tableView indexPathsForSelectedRows]);
//    [self.tableView reloadRowsAtIndexPaths:[self.tableView indexPathsForSelectedRows] withRowAnimation:UITableViewRowAnimationAutomatic];
//}
//
@end
