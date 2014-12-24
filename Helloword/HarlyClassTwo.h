//
//  HarlyClassTwo.h
//  Helloword
//
//  Created by Harly on 14/12/19.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FunProtocol.h"
@interface HarlyClassTwo : NSObject
@property(assign,nonatomic) id<FunProtocol> harlydelegate;
-(void)ForFun:(NSString*) funpara;
-(void)RegisterListerner;
@end
