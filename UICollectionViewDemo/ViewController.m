//
//  ViewController.m
//  UICollectionViewDemo
//
//  Created by Alain Malenfant on 11/24/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *patternImagesArray;

@end

@implementation ViewController

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
