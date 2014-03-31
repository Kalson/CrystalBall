//
//  THViewController.m
//  Crystalball
//
//  Created by KaL on 3/29/14.
//  Copyright (c) 2014 TreeHouse. All rights reserved.
//

#import "THViewController.h"
#import "THCrystalBall.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.crystalBall = [[THCrystalBall alloc] init];
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"CB00001"],
                                                [UIImage imageNamed:@"CB00002"],
                                                [UIImage imageNamed:@"CB00003"],
                                                [UIImage imageNamed:@"CB00004"],
                                                [UIImage imageNamed:@"CB00005"],
                                                [UIImage imageNamed:@"CB00006"],
                                                [UIImage imageNamed:@"CB00007"],
                                                [UIImage imageNamed:@"CB00008"],
                                                [UIImage imageNamed:@"CB00009"],
                                                [UIImage imageNamed:@"CB000010"],
                                                [UIImage imageNamed:@"CB000011"],
                                                [UIImage imageNamed:@"CB000012"],
                                                [UIImage imageNamed:@"CB000013"],
                                                [UIImage imageNamed:@"CB000014"],
                                                [UIImage imageNamed:@"CB000015"],
                                                [UIImage imageNamed:@"CB000016"],
                                                [UIImage imageNamed:@"CB000017"],
                                                [UIImage imageNamed:@"CB000018"],
                                                [UIImage imageNamed:@"CB000019"],
                                                [UIImage imageNamed:@"CB000020"],
                                                [UIImage imageNamed:@"CB000021"],
                                                [UIImage imageNamed:@"CB000022"],
                                                [UIImage imageNamed:@"CB000023"],
                                                [UIImage imageNamed:@"CB000024"],
                                                [UIImage imageNamed:@"CB000025"],
                                                [UIImage imageNamed:@"CB000026"],
                                                [UIImage imageNamed:@"CB000027"],
                                                [UIImage imageNamed:@"CB000028"],
                                                [UIImage imageNamed:@"CB000029"],
                                                [UIImage imageNamed:@"CB000030"],
                                                [UIImage imageNamed:@"CB000031"],
                                                [UIImage imageNamed:@"CB000032"],
                                                [UIImage imageNamed:@"CB000033"],
                                                [UIImage imageNamed:@"CB000034"],
                                                [UIImage imageNamed:@"CB000035"],
                                                [UIImage imageNamed:@"CB000036"],
                                                [UIImage imageNamed:@"CB000037"],
                                                [UIImage imageNamed:@"CB000038"],
                                                [UIImage imageNamed:@"CB000039"],
                                                [UIImage imageNamed:@"CB000040"],
                                                [UIImage imageNamed:@"CB000041"],
                                                [UIImage imageNamed:@"CB000042"],
                                                [UIImage imageNamed:@"CB000043"],
                                                [UIImage imageNamed:@"CB000044"],
                                                [UIImage imageNamed:@"CB000045"],
                                                [UIImage imageNamed:@"CB000046"],
                                                [UIImage imageNamed:@"CB000047"],
                                                [UIImage imageNamed:@"CB000048"],
                                                [UIImage imageNamed:@"CB000049"],
                                                [UIImage imageNamed:@"CB000050"],
                                                [UIImage imageNamed:@"CB000051"],
                                                [UIImage imageNamed:@"CB000052"],
                                                [UIImage imageNamed:@"CB000053"],
                                                [UIImage imageNamed:@"CB000054"],
                                                [UIImage imageNamed:@"CB000055"],
                                                [UIImage imageNamed:@"CB000056"],
                                                [UIImage imageNamed:@"CB000057"],
                                                [UIImage imageNamed:@"CB000058"],
                                                [UIImage imageNamed:@"CB000059"],
                                                [UIImage imageNamed:@"CB000060"],nil];
    self.backgroundImageView.animationDuration = 2.5f;
    self.backgroundImageView.animationRepeatCount = 1;

    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Prediction

- (void) makePrediction {
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

#pragma mark - Motion Events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}

#pragma mark - Touch Events

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancelled");
}

@end
