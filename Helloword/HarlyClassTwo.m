//
//  HarlyClassTwo.m
//  Helloword
//
//  Created by Harly on 14/12/19.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import "HarlyClassTwo.h"

@implementation HarlyClassTwo
@synthesize harlydelegate;
-(void)ForFun:(NSString*) funpara
{
    [harlydelegate HaveFun:funpara];
}
-(void)RegisterListerner
{
    NSNotificationCenter* center = [NSNotificationCenter defaultCenter];
    SEL selector=@selector(receiveHarly:);
    [center addObserver:self selector:selector name:@"HarlyNotify" object:nil];
}

-(void)receiveHarly : (NSNotification*) param
{
    NSString *message = (NSString*)param.object;
    NSLog(message);
}

@end
