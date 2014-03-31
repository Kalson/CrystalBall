//
//  THCrystalBall.h
//  Crystalball
//
//  Created by KaL on 3/29/14.
//  Copyright (c) 2014 TreeHouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THCrystalBall : NSObject {
    NSArray *_predictions;
}

-(NSString*) randomPrediction;
@property (strong, nonatomic, readonly) NSArray *predictions;

@end
