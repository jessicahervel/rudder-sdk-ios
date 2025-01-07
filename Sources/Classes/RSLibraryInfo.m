//
//  RSLibraryInfo.m
//  RSSDKCore
//
//  Created by Arnab Pal on 17/10/19.
//  Copyright © 2019 RSlabs. All rights reserved.
//

#import "RSLibraryInfo.h"
#import "RSConstants.h"

@implementation RSLibraryInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"rudder-ios-library";
        _version = @"1.31.0";
    }
    return self;
}

- (instancetype) initWithDict:(NSDictionary*) dict {
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        _version = dict[@"version"];
    }
    return self;
}

- (NSDictionary<NSString *,NSObject *> *)dict {
    NSMutableDictionary *tempDict;
    @synchronized (tempDict) {
        tempDict = [[NSMutableDictionary alloc] init];
        
        [tempDict setValue:_name forKey:@"name"];
        [tempDict setValue:_version forKey:@"version"];
        
        return [tempDict copy];
    }
}

@end
