#import <Foundation/Foundation.h>

@class AFNetworkReachabilityManager;

@interface Environment : NSObject

@property (strong, nonatomic, readonly) AFNetworkReachabilityManager *reachabilityManager;

+ (Environment *)singleton;
- (BOOL)isTestEnvironment;

@end