//
//  PanViewController.m
//  GesturesDemo
//
//  Created by Tim.Milne on 2/24/15.
//  Copyright (c) 2015 Tim.Milne. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;

@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create a pan view gesture recognizer and register it with the test view
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
    
    // Get the current location
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    // Recenter the view
    self.testView.center = touchLocation;
    
    // TPM This introduced an update bug, so I commented it out...
    // Get and display the velocity
//    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
//    self.horizontalVelocityLabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %.2f points/sec", velocity.x];
//    self.verticalVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %.2f points/sec", velocity.y];
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
