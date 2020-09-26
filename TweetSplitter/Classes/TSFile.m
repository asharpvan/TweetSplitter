//
//  TSFile.m
//  TweetSplitter
//
//  Created by #HellRaiser on 24/09/20.
//  Copyright © 2020 asharpvan. All rights reserved.
//

#import "TSFile.h"

@implementation TSFile

-(NSMutableArray *) tweet:(NSString *) message {
    
    NSMutableArray *arrayToReturn = [NSMutableArray new];
    
    NSArray *words = [message componentsSeparatedByString: @" "];
    NSMutableString *line = words.firstObject;
    words = [words  subarrayWithRange:NSMakeRange(1, words.count - 1)];
    
    for (NSString *word in words) {
        NSString *wordWithSpace = [NSString stringWithFormat:@" %@", word];
        if ([line length] + [wordWithSpace length] <= 60) {
            [line appendString:wordWithSpace];
        } else {
            NSLog(@"%@", line);
            [arrayToReturn addObject:[line stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet]];
        }
    }
    [arrayToReturn addObject:[line stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet]];
    return arrayToReturn;
}

-(void) doSomething {
    NSLog(@"Reached here!!");
}

@end

//void function {
//    NSLog(@"")
//}
