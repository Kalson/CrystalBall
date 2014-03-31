//
//  THViewController.h
//  Crystalball
//
//  Created by KaL on 3/29/14.
//  Copyright (c) 2014 TreeHouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class THCrystalBall;

@interface THViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) THCrystalBall *crystalBall;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

- (void) makePrediction;

@end
