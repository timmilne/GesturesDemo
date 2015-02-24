//
//  PanViewController.h
//  GesturesDemo
//
//  Created by Tim.Milne on 2/24/15.
//  Copyright (c) 2015 Tim.Milne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalVelocityLabel;

@end
