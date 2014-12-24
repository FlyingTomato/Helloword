//
//  NSString.m
//  Helloword
//
//  Created by Harly on 14/12/19.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import "NSString.h"

@implementation NSString (HarlyCategory)

- (NSString*) Stringplus: (NSString*) para1 Para2:(NSString*) para2
{
    return [para1 stringByAppendingString:para2];
}

@end
