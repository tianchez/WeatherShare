//
//  MoodViewController.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/5/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "MoodViewController.h"

@implementation MoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _model=[ WeatherModel sharedModel];
}


- (IBAction)angerClicked:(id)sender {
    
    [self.angerButton setBackgroundColor:[UIColor blackColor]];
    [self.consolingButton setBackgroundColor:nil];
    [self.amazedButton setBackgroundColor:nil];
    [self.happyButton setBackgroundColor:nil];
    [self.sadnessButton setBackgroundColor:nil];
    
    [self.model setMood:@"anger"];
        
  }


- (IBAction)consolingClicked:(id)sender {
    [self.angerButton setBackgroundColor:nil];
    [self.consolingButton setBackgroundColor:[UIColor blackColor]];
    [self.amazedButton setBackgroundColor:nil];
    [self.happyButton setBackgroundColor:nil];
    [self.sadnessButton setBackgroundColor:nil];
    
    [self.model setMood:@"consoling"];
}

- (IBAction)amazedClicked:(id)sender {
    [self.angerButton setBackgroundColor:nil];
    [self.consolingButton setBackgroundColor:nil];
    [self.amazedButton setBackgroundColor:[UIColor blackColor]];
    [self.happyButton setBackgroundColor:nil];
    [self.sadnessButton setBackgroundColor:nil];
    
    [self.model setMood:@"amazed"];
}

- (IBAction)happyClicked:(id)sender {
    [self.angerButton setBackgroundColor:nil];
    [self.consolingButton setBackgroundColor:nil];
    [self.amazedButton setBackgroundColor:nil];
    [self.happyButton setBackgroundColor:[UIColor blackColor]];
    [self.sadnessButton setBackgroundColor:nil];
    
    [self.model setMood:@"happy"];
}

- (IBAction)sadnessClicked:(id)sender {
    [self.angerButton setBackgroundColor:nil];
    [self.consolingButton setBackgroundColor:nil];
    [self.amazedButton setBackgroundColor:nil];
    [self.happyButton setBackgroundColor:nil];
    [self.sadnessButton setBackgroundColor:[UIColor blackColor]];
    
    [self.model setMood:@"sadness"];
}

@end
