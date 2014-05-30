#import "Environment.h"
#import <AFNetworking/AFNetworkReachabilityManager.h>

static Environment *_singleton = nil;

@interface Environment()
@property (strong, nonatomic, readwrite) AFNetworkReachabilityManager *reachabilityManager;
@end


@implementation Environment

+ (Environment *)singleton
{
    @synchronized(self)
    {
        if (_singleton == nil)
        {
            _singleton = [self new];
        }

        return _singleton;
    }
}

- (id)init
{
    if (self = [super init])
    {
        [self initializeServices];
    }
    return self;
}


- (void)initializeServices
{
    if ([self isTestEnvironment])
    {
        [self performSelector:@selector(initializeFakeServices)];
        return;
    }

    self.reachabilityManager = [AFNetworkReachabilityManager sharedManager];
}

- (BOOL)isTestEnvironment {
    return [self respondsToSelector:@selector(initializeFakeServices)];
}

@end
