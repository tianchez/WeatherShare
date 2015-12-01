//
//  InfoViewController.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/5/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "InfoViewController.h"
#import "Group.h"

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _model=[ WeatherModel sharedModel];
    self.navigationItem.leftBarButtonItem=self.homeButton;
    
    _manager = [[WeatherManager alloc] init];
    _manager.communicator = [[WeatherCommunicator alloc] init];
    _manager.communicator.delegate = _manager;
    _manager.delegate = self;
    self.cityName=[self.model cityName];
     NSLog(@"!!! %@",self.cityName);
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(startFetchingGroups:)
                                                 name:@"start"
                                               object:nil];
    
    NSLog(@"11 %@", self.cityName);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"start" object:self];
    [self.moodButton setEnabled:NO];

}

- (void)startFetchingGroups:(NSNotification *)notification

{
    [_manager fetchGroupsAtCity :self.cityName];
    NSLog(@"3434343434");
    //[_manager fetchGroupsAtCity :city];
    
    NSLog(@"11111");
}


- (void)didReceiveGroups:(NSArray *)groups
{
    NSLog(@"1234");
    Group *group = groups[0];
    [self.model setCurrTemp:[group currTemp]];
    [self.model setIconCode:[group iconCode]];
    [self.model setMaxTemp:[group maxTemp]];
    [self.model setMinTemp:[group minTemp]];
    [self.model setCoordLon:[group coordLon]];
    [self.model setCoordLat:[group coordLat]];
    [self.model setWeatherDiscription:[group weatherDiscription]];
    [self.model setCityName:[group cityName]];
    
    NSString *fileName=[self.model.iconDict objectForKey:[self.model iconCode]];
    NSLog(@"23232323 %lu", (unsigned long)[self.model.iconDict count ]);
    
    NSLog(@" %@,  %@",[self.model iconCode], fileName);
    
    self.weatherImage.image = [UIImage imageNamed:fileName];
    
    //temprature
    NSNumberFormatter *fmt = [[NSNumberFormatter alloc] init];
    [fmt setPositiveFormat:@"0.#"];

    
    NSInteger *currTemp=[[NSNumber numberWithDouble:[self.model.currTemp doubleValue]-273.15] integerValue];
       
    NSString *minTemp=[[NSNumber numberWithDouble:[self.model.minTemp doubleValue]-273.15]stringValue];
    NSString *maxTemp=[[NSNumber numberWithDouble:[self.model.maxTemp doubleValue]-273.15]stringValue];
    
    NSLog(@"3434 %ld 343 %@", (long)[self.model.currTemp integerValue], [self.model currTemp]);
    
    [self.cityNameLabel setText:[self.model cityName]];
    [self.desLabel setText:[self.model weatherDiscription]];
    self.currTempLabel.text=[NSString stringWithFormat:@"%d°C", currTemp];
     [self.moodButton setEnabled:YES];
    //self.tempRangeLabel.text=[NSString stringWithFormat:@"%@°C ~ %@°C ", minTemp,maxTemp];
    

    
    
   
}

- (void)fetchingGroupsFailedWithError:(NSError *)error
{
    
}

@end
