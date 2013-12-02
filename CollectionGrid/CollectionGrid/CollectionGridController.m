//
//  CollectionGridController.m
//  CollectionGrid
//
//  Created by aptara on 29/11/13.
//  Copyright (c) 2013 aptara. All rights reserved.
//

#import "CollectionGridController.h"

@interface CollectionGridController ()

@end

NSArray *imageArrays;

@implementation CollectionGridController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    imageArrays = [NSArray arrayWithObjects:@"bird1.jpg", @"bird3.jpg", @"bird3.jpg", @"bird4.jpg", @"bird5.jpg", @"bird6.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"GridCell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *birdImageView = (UIImageView *)(UIImageView *)[cell viewWithTag:5];
    birdImageView.backgroundColor = [UIColor redColor];
    [birdImageView setImage:[UIImage imageNamed:[imageArrays objectAtIndex:(arc4random()%imageArrays.count)]]];
    
    return cell;
}

@end
