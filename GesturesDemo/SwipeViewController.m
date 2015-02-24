//
//  SwipeViewController.m
//  GesturesDemo
//
//  Created by Tim.Milne on 2/24/15.
//  Copyright (c) 2015 Tim.Milne. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create and initialize the right swipe view controller object for viewOrange
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    
    // Set the direction
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
    
    // Create and initialize the left swipe view controller object
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    
    // Set the direction
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    // Now add these gesture recognizers to the viewOrange
    [self.viewOrange addGestureRecognizer:swipeRightOrange];
    [self.viewOrange addGestureRecognizer:swipeLeftOrange];
    

    // Create and initialize the right swipe view controller object for viewBlack
    UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
    [self.viewBlack addGestureRecognizer:swipeRightBlack];
    
    // Create and initialize the left swipe view controller object for viewGreen
    UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewGreen addGestureRecognizer:swipeLeftGreen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    
    // In an animation block
    [UIView animateWithDuration:0.5 animations:^{
        
        // Adjust the views by 320
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 320.0, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 320.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 320.0, 0.0);
    }];
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    
    // In an animation block
    [UIView animateWithDuration:0.5 animations:^{
        
        // Adjust the views by -320
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -320.0, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -320.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -320.0, 0.0);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
