//
//  NTest.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-21.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//


#import <KIF/KIF.h>
#import "Nocilla.h"

//add Nocilla and install in pod file
//setting up charles:1.Setup:nstall your Charles Root Certificate into all of your iOS Simulators
//                    2.For IOS9, addtional code added to info.list


@interface Ntest : KIFTestCase

@end

@implementation Ntest

//after

- (void)beforeAll{
    [[LSNocilla sharedInstance] start];
}

- (void)afterAll{
    [[LSNocilla sharedInstance] stop];
}

- (void)afterEach{
    [[LSNocilla sharedInstance] clearStubs];
}

- (void)testCase04_1{
    NSLog(@"Test Start!!!!!!!!!!!!");
    NSData *localData ;//= [NSData dataWithContentsOfFile:[tester contentFilePath:@"Response"]];
    NSLog(@"Local Data: %@", localData);
                                                    
    stubRequest(@"POST", @"https://api.parse.com/1/classes/QA_Pivots").andReturn(200).withBody(localData);
    
    NSLog(@"Test finished!!!!!!!!!!!!");
}






- (void)testCase04_2{
    NSLog(@"Test Start!!!!!!!!!!!!");
    
    stubRequest(@"GET", @"http://www.google.com").andReturn(404);
    
    NSLog(@"Test finished!!!!!!!!!!!!");
}

@end