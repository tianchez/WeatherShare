//
//  WeatherManagerDelegate.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#ifndef weatherShare_WeatherManagerDelegate_h
#define weatherShare_WeatherManagerDelegate_h

@protocol WeatherManagerDelegate
- (void)didReceiveGroups:(NSArray *)groups;
- (void)fetchingGroupsFailedWithError:(NSError *)error;
@end

#endif
