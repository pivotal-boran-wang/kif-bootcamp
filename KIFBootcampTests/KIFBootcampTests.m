//
//  KIFBootcampTests.m
//  KIFBootcampTests
//
//  Created by Pivotal on 2016-01-19.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import <UIKit/UIKit.h>


@interface KIFBootcampTests : XCTestCase

@end

@implementation KIFBootcampTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testCase00 {
    [tester waitForTimeInterval:5];
}


- (void)testCase01 {
    
    [tester waitForTappableViewWithAccessibilityLabel:@"Gordon Krull"];
    
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester waitForViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester waitForViewWithAccessibilityLabel:@"KIF Automator"];
    [tester waitForViewWithAccessibilityLabel:@"3"];
    
    [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    [tester waitForTimeInterval:3];
    [tester tapViewWithAccessibilityLabel:@"Christopher Wong"];
    [tester waitForViewWithAccessibilityLabel:@"Comments"];
    //[tester enterText:@"Test Comments" intoViewWithAccessibilityLabel:<#(NSString *)#>];
    [tester tapViewWithAccessibilityLabel:@"Submit"];
    [tester waitForViewWithAccessibilityLabel:@"Comment Added"];
    [tester tapViewWithAccessibilityLabel:@"OK"];
    [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
}


- (void)testCase02{
    //add labels in TableViewController and DetailsViewCOntroller
    
    //...
    UITableView *table = (UITableView *)[tester waitForViewWithAccessibilityLabel:@"table label"];
    NSInteger numRows = [table numberOfRowsInSection:0];
    
    for (int i = 0; i < numRows; i++)
    {
        [tester tapRowAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0] inTableViewWithAccessibilityIdentifier:@"table identifier"];
        [tester enterText:@"Test comment" intoViewWithAccessibilityLabel:@"Comment Field"];
        [tester tapViewWithAccessibilityLabel:@"Submit"];
        [tester tapViewWithAccessibilityLabel:@"OK"];
        [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    }
}



/**- (void)testPerformanceExample {a
 // This is an example of a performance test case.
 [self measureBlock:^{
 // Put the code you want to measure the time of here.
 }];
 }**/

@end
