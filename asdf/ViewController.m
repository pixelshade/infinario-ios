//
//  ViewController.m
//  asdf
//
//  Created by Pejko Salik on 13/11/15.
//  Copyright (c) 2015 Pejko Salik. All rights reserved.
//

#import "ViewController.h"
#import <Analytics.h>
@interface ViewController ()

@end

@implementation ViewController


NSUInteger count = 0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (IBAction) sendTrack
{
    count++;
    NSString *text = [NSString stringWithFormat:@"%@", @(count)];
//    [[SEGAnalytics sharedAnalytics] identify:@"tenvcotrnoleri"
//                                      traits:@{ @"name": @"kontrolero",
//                                                @"email": @"jd@fgsm.gg" }];
    [[SEGAnalytics sharedAnalytics] track:@"Count"
                               properties:@{ @"pocet": text }];
    [[SEGAnalytics sharedAnalytics]flush];
    
    
    
//    UIAlertView *hello = [[UIAlertView alloc]
//                            initWithTitle:@"ggg" message:@"lalaal" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    
//    [hello show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
