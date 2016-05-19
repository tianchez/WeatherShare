//
//  EnterCityViewController.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/5/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"

@interface EnterCityViewController : UIViewController

@property (strong, nonatomic) WeatherModel *model;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end
