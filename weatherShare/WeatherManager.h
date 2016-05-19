//
//  WeatherManager.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#import "WeatherManagerDelegate.h"
#import "WeatherCommunicatorDelegate.h"
#import "WeatherModel.h"


@class WeatherCommunicator;

@interface WeatherManager : NSObject<WeatherCommunicatorDelegate>
@property (strong, nonatomic) WeatherCommunicator *communicator;
@property (weak, nonatomic) id<WeatherManagerDelegate> delegate;
@property (strong, nonatomic) WeatherModel *model;



- (void)fetchGroupsAtCity:(NSString* ) cityName;
@end
