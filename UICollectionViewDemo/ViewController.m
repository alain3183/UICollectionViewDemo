//
//  ViewController.m
//  UICollectionViewDemo
//
//  Created by Alain Malenfant on 11/24/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "ViewController.h"
#import "PatternViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *patternImagesArray;

@end

@implementation ViewController

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.patternImagesArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    PatternViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PatternCell" forIndexPath:indexPath];
    
    NSString *myPatternString = [self.patternImagesArray objectAtIndex:indexPath.row];
    
    cell.patternImageView.image = [UIImage imageNamed:myPatternString];
    cell.patternLabel.text = myPatternString;
    
    return cell;
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(150.0, 150.0);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsMake(5, 5, 5, 5);
}





- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.patternImagesArray=
    @[@"pattern1.jpg", @"pattern2.jpg", @"pattern3.jpg", @"pattern4.jpg", @"pattern5.jpg", @"pattern6.jpg", @"pattern7.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
