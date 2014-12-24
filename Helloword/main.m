//
//  main.m
//  Helloword
//
//  Created by Harly on 14/12/18.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HarlyClass.h"
#import "NSString.h"
#import "HarlyClassTwo.h"
#import "HarlyMethodLibrary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef enum {sun,sat,fri,thus} Day;
        HarlyClass* ha = [HarlyClass new];
        Class haaa = NSClassFromString(@"HarlyClass");
        id bbb = [haaa new];
        ha.harlyID = @"aaaaaaa";
        SEL selector = @selector(RequiredHarly:Parameter2:);
//        id age = [ha valueForKey:@"harlyID"];
//        unsigned int propertyCount = 0;
//        objc_property_t* properties = class_copyPropertyList([HarlyClass class], &propertyCount);
//        for (unsigned int i = 0; i < propertyCount; i++)
//        {
//             objc_property_t property = properties[i];
//             const char * name = property_getName(property);
//        }
        Day hum = thus;
//        HarlyClass* harly = [[HarlyClass alloc] init];
//        harly.harlyID = @"1";
//        harly.harlySelector = @selector(RefHarly:para2:);
        if ([bbb respondsToSelector:selector]) {
            [bbb performSelector:selector withObject:@"aa" withObject:@"hh"];
        }
        
        
        //ha.harlyID StringPluss
        
        IMP proHarly = [bbb methodForSelector:selector];
        NSLog([ha.harlyID Stringplus:ha.harlyID Para2:@"bbbbbbbb"]);
        
        HarlyClassTwo *two = [[HarlyClassTwo alloc]init];
        two.harlydelegate = ha;
        [two ForFun:@"harlyFun"];
        [two RegisterListerner];
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center postNotificationName:@"HarlyNotify" object:@"Harly asks you to have dinner~"];
        //proHarly(bbb,selector,@"aaa",@"safa");
        HarlyMethodLibrary* lirary = [[HarlyMethodLibrary alloc]init];
        [lirary HarlyLibraryLoad];
        [HarlyMethodLibrary HarlyStaticMethod];

        [ha HarlyWithBlock:^(int val)
         {
             NSLog(@"%d", val);
         }];
        
        [ha KVCplay];
        ha.harlyEntity.entityName = @"aaaa";
        //[ha.harlyEntity setValue:@"harly222222" forKey:@"entityName"];
        [ha.harlyEntity removeObserver:ha forKeyPath:@"entityName"];

//        NSLog(harly.harlyID);
    }
    
    return 0;
}






