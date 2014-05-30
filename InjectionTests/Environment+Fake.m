#import "Environment+Fake.h"
#import "FakeReachabilityManager.h"

@implementation Environment (Fake)

- (void)initializeFakeServices
{
    [self setValue:[FakeReachabilityManager sharedManager] forKey:@"reachabilityManager"];
}

@end
