//
//  Group.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group:NSObject

@property (strong, nonatomic) NSNumber *coordLon;
@property (strong, nonatomic) NSNumber *coordLat;
@property (strong, nonatomic) NSNumber *currTemp;
@property (strong, nonatomic) NSNumber *maxTemp;
@property (strong, nonatomic) NSNumber *minTemp;
@property (strong, nonatomic) NSString *weatherDiscription;
@property (strong, nonatomic) NSString *iconCode;
@property (strong, nonatomic) NSString *cityName;
//@property (strong, nonatomic) NSString *word;

@end
