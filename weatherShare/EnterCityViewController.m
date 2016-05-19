//
//  EnterCityViewController.m
//  weatherShare
//
//  Created by Tianchen Zhang on 5/5/15.
//  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
//

#import "EnterCityViewController.h"
#import "WeatherModel.h"



@implementation EnterCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _model=[ WeatherModel sharedModel];
    self.navigationItem.leftBarButtonItem=self.homeButton;
}

- (IBAction)cancelClicked:(id)sender {
    [self.nameText setText:@""];
    
}

- (IBAction)submitClicked:(id)sender {
   // [self.model setName:[self.nameText text]];
   
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSString *cityName=[self.nameText text];
    NSString *trimmedCityName = [cityName stringByTrimmingCharactersInSet:
                               [NSCharacterSet whitespaceCharacterSet]];
    NSLog(@"%@", trimmedCityName);
    
    char *tempString = [trimmedCityName UTF8String];
    for (int i=0;i<strlen(tempString);i++)
    {
        if (tempString[i]==' ' || tempString[i]=='  ' )
        {
            tempString[i]='0';
            char buf[100] = {};
            char insert[]="%2";
            strncpy(buf, tempString, i); // copy at most first pos characters
            int len = strlen(buf);
            strcpy(buf+len, insert); // copy all of insert[] at the end
            len += strlen(insert);  // increase the length by length of insert[]
            strcpy(buf+len, tempString+i); // copy the rest
            
            strcpy(tempString, buf);   // copy it back to subject
            NSLog(@"%@",[NSString stringWithCString:tempString encoding:NSUTF8StringEncoding]);
            
        }
    }
    
    trimmedCityName=[NSString stringWithCString:tempString encoding:NSUTF8StringEncoding];
     NSLog(@"%@", trimmedCityName);
    
    [self.model setName:trimmedCityName];
    NSLog(@"222222");
}



@end
