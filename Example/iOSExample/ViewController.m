//
//  ViewController.m
//  iOSExample
//
//  Created by #HellRaiser on 24/09/20.
//  Copyright © 2020 asharpvan. All rights reserved.
//

#import "ViewController.h"
#import <TweetSplitter/TSFile.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    TSFile *file = [TSFile new];
    
    NSMutableArray *array = [file tweet:@"Pranav"];

    
    
//    NSLog(@"%@",[file tweet:@"Dark Mode on iOS is now available for all NCCU customers. It'll help save your phone's battery life and protect your eyes."]);
    [file doSomething];
    // Do any additional setup after loading the view.
}


@end
