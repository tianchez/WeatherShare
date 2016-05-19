//
//  HomeViewController.h
//  weatherShare
//
//  Created by Tianchen Zhang on 5/4/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *currLocBtn;
@property
(weak, nonatomic) IBOutlet UIButton *otherPlaBtn;
@property (strong, nonatomic) WeatherModel *model;

@end

