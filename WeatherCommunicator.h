//
//  WeatherCommunicator.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherCommunicatorDelegate.h"


#import <CoreLocation/CoreLocation.h>


@protocol WeatherCommunicatorDelegate;

@interface WeatherCommunicator : NSObject
@property (weak, nonatomic) id<WeatherCommunicatorDelegate> delegate;

- (void)searchGroupsAtCity:(NSString* ) cityName;

@property (strong, nonatomic) NSString *city;

@end