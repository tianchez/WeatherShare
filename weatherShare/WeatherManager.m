//
//  WeatherManager.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "GroupBuilder1.h"
#import "WeatherCommunicator.h"
#import "WeatherManager.h"

@implementation WeatherManager

-(id) init
{
    self=[super init];
    if (self)
    {
        _model=[ WeatherModel sharedModel];
        
    }
    
    return self;
}

- (void)fetchGroupsAtCity:(NSString* ) cityName
{
    [self.communicator searchGroupsAtCity:cityName];
}

#pragma mark - WeatherCommunicatorDelegate

- (void)receivedGroupsJSON:(NSData *)objectNotation
{
    NSLog(@"receivedGroupsJSON");
    NSError *error = nil;
    NSArray *groups = [GroupBuilder1 groupsFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingGroupsFailedWithError:error];
        
    } else {
        
        Group *group = groups[0];
        [self.model setCurrTemp:[group currTemp]];
        [self.model setIconCode:[group iconCode]];
        [self.model setMaxTemp:[group maxTemp]];
        [self.model setMinTemp:[group minTemp]];
        [self.model setCoordLon:[group coordLon]];
        [self.model setCoordLat:[group coordLat]];
        [self.model setWeatherDiscription:[group weatherDiscription]];
        [self.model setCityName:[group cityName]];
        
        [self.delegate didReceiveGroups:groups];
       

    }
}

- (void)fetchingGroupsFailedWithError:(NSError *)error
{
    [self.delegate fetchingGroupsFailedWithError:error];
}

@end