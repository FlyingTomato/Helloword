//
//  HarlyClass.m
//  Helloword
//
//  Created by Harly on 14/12/18.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import "HarlyClass.h"
#import "HarlyEntity.h"
#import "HarlySubEntity.h"

@implementation HarlyClass
@synthesize harlyID = _harlyID;
@synthesize harlyEntity;
@synthesize  harlySelector;
void reflectFunction(id self, SEL _cmd)
{
    NSLog(@"Excute method %@ on %@",NSStringFromSelector(_cmd),self );
}

- (id)initWithID:(NSString*) harlyID22
{
    self = [super init];
    if (self) {
            self.harlyID = harlyID22;
    }
    return self;
}

-(void)RefHarly:(NSString*) aa para2:(NSString*) bb
{
    NSLog(@"%@ + %@",aa,bb);
}

-(void)RequiredHarly:(NSString*)para Parameter2: (NSString *) para2
{
    NSLog(@"%@+%@",para,para2);
}

-(void)HaveFun:(NSString*) funpara
{
    NSLog(funpara);
}

typedef void (^MethodBlock)(int);

- (void) HarlyWithBlock:(MethodBlock)block
{
    int a = 5;
    block(a);
}

-(void)KVCplay
{
    harlyEntity = [[HarlyEntity alloc]init];
    [harlyEntity setValue:@"id1" forKey:@"entityID"];
    [harlyEntity setValue:@"harly" forKey:@"entityName"];
    HarlySubEntity* subEntity = [[HarlySubEntity alloc]init];
    [subEntity setValue:@"im shabu" forKey:@"subName"];
    [harlyEntity setValue:subEntity forKey:@"subEntity"];
    NSString* name = [harlyEntity valueForKey:@"entityID"];
    NSString* subName = [harlyEntity valueForKeyPath:@"subEntity.subName"];
    
    [harlyEntity addObserver:self forKeyPath:@"entityName" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];

    
    NSLog(@"name: %@ subName : %@",name,subName);
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if([keyPath isEqualToString:@"entityName"])
    {
        NSString *oldname = [change objectForKey:NSKeyValueChangeOldKey];
        NSString *newname = [change objectForKey:NSKeyValueChangeNewKey];
        NSLog(@"%@'s name has changed from %@ to %@",object,oldname,newname);
    }
}
@end
