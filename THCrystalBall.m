//
//  THCrystalBall.m
//  Crystalball
//
//  Created by KaL on 3/29/14.
//  Copyright (c) 2014 TreeHouse. All rights reserved.
//

#import "THCrystalBall.h"

@implementation THCrystalBall

-(NSArray *) predictions {
    if (_predictions ==nil) {
        _predictions = @[@"Yes",@"No",@"Where?",@"Who?", @"Where?", @"When?", @"How?"];
    }
    return _predictions;
}

-(NSString*) randomPrediction{
    int random =arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end
