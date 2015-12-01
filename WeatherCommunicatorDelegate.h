//
//  WeatherCommunicatorDelegate.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#ifndef weatherShare_WeatherCommunicatorDelegate_h
#define weatherShare_WeatherCommunicatorDelegate_h

@protocol WeatherCommunicatorDelegate
- (void)receivedGroupsJSON:(NSData *)objectNotation;
- (void)fetchingGroupsFailedWithError:(NSError *)error;
@end


#endif
