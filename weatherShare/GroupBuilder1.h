//
//  GroupBuilder1.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"
#import "WeatherModel.h"

@interface GroupBuilder1 : NSObject

+ (NSArray *)groupsFromJSON:(NSData *)objectNotation error:(NSError **)error;
@property (strong, nonatomic) WeatherModel *model;

@end


