#import <XCTest/XCTest.h>
#import "Environment+Fake.h"
#import "ViewController.h"
#import "FakeReachabilityManager.h"


@interface ViewControllerTests : XCTestCase

@property (nonatomic, strong) ViewController *controller;

@end


@implementation ViewControllerTests

- (void)setUp
{
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.controller = (ViewController *)[storyboard instantiateInitialViewController];
    [self.controller loadView];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testOnlineLabelDisplaysOfflineWhenOffline
{
    FakeReachabilityManager *manager = (FakeReachabilityManager *)self.controller.reachabilityManager;
    [manager setOffline];

    [self.controller viewDidLoad];

    NSString *expectedResult = @"offline";
    NSString *text = self.controller.internetStatusLabel.text;

    XCTAssertTrue([text isEqualToString:expectedResult], @"Strings are not equal %@ %@", text, expectedResult);
}

- (void)testOnlineLabelDisplaysOnlineWhenOnline
{
    FakeReachabilityManager *manager = (FakeReachabilityManager *)self.controller.reachabilityManager;
    [manager setOnline];

    [self.controller viewDidLoad];

    NSString *expectedResult = @"online";
    NSString *text = self.controller.internetStatusLabel.text;

    XCTAssertTrue([text isEqualToString:expectedResult], @"Strings are not equal %@ %@", text, expectedResult);
}


@end
