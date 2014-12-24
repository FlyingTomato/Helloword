//
//  HarlyClass.h
//  Helloword
//
//  Created by Harly on 14/12/18.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HarlyProtocol.h"
#import "FunProtocol.h"
#import "HarlyEntity.h"
@interface HarlyClass : NSObject
<HarlyProtocol , FunProtocol>

@property (nonatomic,copy) NSString* harlyID;
-(NSString*)harlyID;
-(void)setHarlyID:(NSString *)harlyID;
- (id)initWithID:(NSString*) harlyID22;
-(void)RefHarly:(NSString*) aa para2:(NSString*) bb;
@property (nonatomic,assign) SEL harlySelector;
typedef void (^MethodBlock)(int);
- (void) HarlyWithBlock:(MethodBlock)block;
@property (nonatomic,copy) HarlyEntity* harlyEntity;
-(void)KVCplay;
@end
