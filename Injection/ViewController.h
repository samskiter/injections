#import <UIKit/UIKit.h>

@class AFNetworkReachabilityManager;


@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *internetStatusLabel;

/* "Injected" properties -- Each should have a corresponding @dynamic directive */
@property (strong, nonatomic) AFNetworkReachabilityManager *reachabilityManager;

@end
