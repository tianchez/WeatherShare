//
//  placeModel.m
//  lab6
//
//  Created by Tianchen Zhang on 4/21/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "WeatherModel.h"

@implementation WeatherModel

//NSString *const placePlist=@"quotes.plist";
//NSString *const UserDefaultsKeyAnswerArray=@"AnswerArray";


-(id) init
{
    self=[super init];
    if (self)
    {
        _sourcePath = [[NSBundle mainBundle] pathForResource:@"iconList" ofType:@"plist"];
       
        _iconDict=[NSDictionary dictionaryWithContentsOfFile:_sourcePath];
        
         if (!_iconDict)
        {
            
            [self save];
            
            
        }
    }
    
    return self;
}

- (void) save
{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    //[defaults setObject:self.answers forKey:UserDefaultsKeyAnswerArray];
    [defaults synchronize];
    
    [self.iconDict writeToFile:self.sourcePath atomically:YES];
    
}


+ (instancetype) sharedModel
{
    static WeatherModel* _sharedModel=nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedModel=[ [self alloc] init];
    });
    //    if (_sharedModel==nil) {
    //        _sharedModel=[ [self alloc] init];
    //    }
    return _sharedModel;
}

- (void) setName:(NSString *)cityName
{
    self.cityName=cityName;
   // NSLog(@"123");
}


@end
