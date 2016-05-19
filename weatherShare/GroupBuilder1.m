//
//  GroupBuilder1.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "GroupBuilder1.h"
#import "Group.h"


@implementation GroupBuilder1

-(id) init
{
    self=[super init];
    if (self)
    {
        _model=[ WeatherModel sharedModel];
        
    }
    
    return self;
}


+ (NSArray *)groupsFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSLog(@"groupsFromJSON");
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *groups = [[NSMutableArray alloc] init];
    
    //NSArray *results = [parsedObject valueForKey:@"weather"];
     NSDictionary *weatherResults = [parsedObject valueForKey:@"weather"];
     NSArray *des0 = [weatherResults valueForKey:@"description"];
     NSString *des=des0[0];
    // NSString *icon = [weatherResults valueForKey:@"icon"];
    
     NSArray *icon1 = [weatherResults valueForKey:@"icon"];
    NSString *icon=icon1[0];
    
//    NSString *string=@" 113456 ";
     NSLog(@"6666 %@", icon);
//    NSString *trimmedIcon = [string stringByTrimmingCharactersInSet:
//                               [NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    NSLog(@" %@", trimmedIcon);
    
    NSDictionary *coordResults = [parsedObject valueForKey:@"coord"];
    NSNumber *lon = [coordResults valueForKey:@"lon"];
    NSNumber *lat = [coordResults valueForKey:@"lat"];
    
    NSDictionary *mainResults = [parsedObject valueForKey:@"main"];
    NSNumber *temp_min = [mainResults valueForKey:@"temp_min"];
    NSNumber *temp_max = [mainResults valueForKey:@"temp_max"];
    NSNumber *temp = [mainResults valueForKey:@"temp"];
    
//    NSArray *cityName0 = [parsedObject valueForKey:@"name"];
//    NSString *cityName = cityName0[0];
    NSString *cityName = [parsedObject valueForKey:@"name"];

    
    Group *group = [[Group alloc] init];
    [group setWeatherDiscription:des];
    [group setIconCode:icon];
    [group setCoordLon:lon];
    [group setCoordLat:lat];
    [group setMaxTemp:temp_max];
    [group setMinTemp:temp_min];
    [group setCurrTemp:temp];
    [group setCityName:cityName];
    
    [groups addObject:group];
    
    NSLog(@"234,%@,  %@",temp_min,temp_max);
    NSLog(@"Count %lu", (unsigned long)weatherResults.count);
    
//    for (NSDictionary *groupDic in results) {
//        Group *group = [[Group alloc] init];
//        
//        for (NSString *key in groupDic) {
//            if ([group respondsToSelector:NSSelectorFromString(key)]) {
//                [group setValue:[groupDic valueForKey:key] forKey:key];
//            }
//        }
//        
//        [groups addObject:group];
//    }
    
    return groups;
}
@end

