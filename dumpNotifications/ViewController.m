//
//  ViewController.m
//  dumpNotifications
//
//  Created by Marcelo on 9/27/17.
//  Copyright © 2017 MAS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dumpNotifications];
}


#pragma mark - Notifications Helper
- (void)dumpNotifications {
    NSNotificationCenter *notifyCenter = [NSNotificationCenter defaultCenter];
    [notifyCenter addObserverForName:nil
                              object:nil
                               queue:nil
                          usingBlock:^(NSNotification *notification){
                              // Explore notification
                              NSLog(@"Notification found with:"
                                    "\r\n     name:     %@"
                                    "\r\n     object:   %@"
                                    "\r\n     userInfo: %@",
                                    [notification name],
                                    [notification object],
                                    [notification userInfo]);
                          }];
}


@end
