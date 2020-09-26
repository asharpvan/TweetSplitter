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
    
//    NSMutableArray *array = [self tweet:@"Pranav"];

    
    
    NSLog(@"%@",[self tweet:@"Dark Mode on iOS is now available for all NCCU customers. It'll help save your phone's battery life and protect your eyes."]);
//    [file doSomething];
    // Do any additional setup after loading the view.
}

-(NSMutableArray *) tweet:(NSString *) message {
    
    NSMutableArray *arrayToReturn = [NSMutableArray new];
    
    NSArray *words = [message componentsSeparatedByString: @" "];
    NSMutableString *line = [NSMutableString string];
    [line appendString: words.firstObject];
    words = [words  subarrayWithRange:NSMakeRange(1, words.count - 1)];
    for (NSString *word in words) {
        NSString *wordWithSpace = [NSString stringWithFormat:@" %@", word];
        if ([line length] + [wordWithSpace length] <= 60) {
            [line appendString:wordWithSpace];
        } else {
            [arrayToReturn addObject:[line stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet]];
            [line setString:wordWithSpace];
        }
    }
    [arrayToReturn addObject:[line stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet]];
    return arrayToReturn;
}



@end
