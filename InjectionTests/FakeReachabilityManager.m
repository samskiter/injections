//
//  FakeReachabilityManager.m
//  Injection
//
//  Created by Sean Dougherty on 5/28/14.
//  Copyright (c) 2014 Sean Dougherty. All rights reserved.
//

#import "FakeReachabilityManager.h"

@interface FakeReachabilityManager()
@property (nonatomic, assign) AFNetworkReachabilityStatus fakeStatus;
@end


@implementation FakeReachabilityManager

- (void)setOffline
{
    self.fakeStatus = AFNetworkReachabilityStatusNotReachable;
}

- (void)setOnline
{
    self.fakeStatus = AFNetworkReachabilityStatusReachableViaWWAN;
}

- (AFNetworkReachabilityStatus)networkReachabilityStatus
{
    return self.fakeStatus;
}

@end
