#import "UIViewController+Injections.h"
#import "Environment.h"


@implementation UIViewController (Injections)

- (AFNetworkReachabilityManager *)reachabilityManager
{
    return [Environment singleton].reachabilityManager;
}

@end
