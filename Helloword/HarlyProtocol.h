//
//  HarlyProtocol.h
//  Helloword
//
//  Created by Harly on 14/12/19.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#ifndef Helloword_HarlyProtocol_h
#define Helloword_HarlyProtocol_h

@protocol HarlyProtocol <NSObject>

@optional

-(void)OptionalHarly:(NSString*)para;

@required
-(void)RequiredHarly:(NSString*)para Parameter2: (NSString *) para2;

@end
#endif
