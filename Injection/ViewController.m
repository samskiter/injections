#import "ViewController.h"
#import <AFNetworking/AFNetworkReachabilityManager.h>

@implementation ViewController

@dynamic reachabilityManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayOnlineStatus];
}

- (void)displayOnlineStatus
{
    BOOL reachable = self.reachabilityManager.networkReachabilityStatus != AFNetworkReachabilityStatusNotReachable;

    if (reachable)
    {
        self.internetStatusLabel.text = NSLocalizedString(@"online", nil);
    }
    else
    {
        self.internetStatusLabel.text = NSLocalizedString(@"offline", nil);
    }
}

@end
