//
//  HarlyEntity.h
//  Helloword
//
//  Created by Harly on 14/12/22.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HarlySubEntity.h"
@interface HarlyEntity : NSObject
{
    HarlySubEntity* subEntity;
}


@property (nonatomic,copy) NSString* entityID;
@property (nonatomic,copy) NSString* entityName;
@end
