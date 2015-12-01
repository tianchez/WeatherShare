//
//  WeatherCommunicator.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "WeatherCommunicator.h"
#import "WeatherCommunicatorDelegate.h"

//#define API_KEY @"1f5718c16a7fb3a5452f45193232"
//#define PAGE_COUNT 20

@implementation WeatherCommunicator


- (void)searchGroupsAtCity:(NSString* ) cityName
{
   // NSString *urlAsString = [NSString stringWithFormat:@"https://api.meetup.com/2/groups?lat=%f&lon=%f&page=%d&key=%@", coordinate.latitude, coordinate.longitude, PAGE_COUNT, API_KEY];
   //api.openweathermap.org/data/2.5/weather?q=London,uk
    	NSString *urlAsString = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&appid=2de143494c0b295cca9337e1e96b00e0",cityName];
    //NSString *urlAsString = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=Miami"];
    
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
   // NSLog(@"%@", );
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        
        if (error) {
            [self.delegate fetchingGroupsFailedWithError:error];
             NSLog(@"ff");
            NSLog(@"%@", [error localizedDescription]);
            NSLog(@"%@", urlAsString );
        } else {
            [self.delegate receivedGroupsJSON:data];
            NSLog(@"sss");
        }
    }];
}

@end
