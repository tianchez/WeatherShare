//
//  MoodViewController.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/5/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"

@interface MoodViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *angerButton;
@property (weak, nonatomic) IBOutlet UIButton *consolingButton;
@property (weak, nonatomic) IBOutlet UIButton *amazedButton;
@property (weak, nonatomic) IBOutlet UIButton *happyButton;
@property (weak, nonatomic) IBOutlet UIButton *sadnessButton;

@property (strong, nonatomic) WeatherModel *model;

@end
