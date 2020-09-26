//
//  TSFile.h
//  TweetSplitter
//
//  Created by #HellRaiser on 24/09/20.
//  Copyright © 2020 asharpvan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSFile : NSObject

-(NSMutableArray *) tweet:(NSString *) message;
-(void) doSomething;

@end

NS_ASSUME_NONNULL_END
