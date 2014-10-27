//
//  BlocstagramTests.m
//  BlocstagramTests
//
//  Created by Brian Doore on 9/15/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//


#import "BLCMedia.h"
#import "BLCUser.h"
#import "BLCComment.h"
#import "BLCComposeCommentView.h"
#import "BLCMediaTableViewCell.h"

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface BlocstagramTests : XCTestCase

@end

@implementation BlocstagramTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testThatUserInitializationWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"username" : @"d'oh",
                                       @"full_name" : @"Homer Simpson",
                                       @"profile_picture" : @"http://www.example.com/example.jpg"};
    BLCUser *testUser = [[BLCUser alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testUser.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testUser.userName, sourceDictionary[@"username"], @"The username should be equal");
    XCTAssertEqualObjects(testUser.fullName, sourceDictionary[@"full_name"], @"The full name should be equal");
    XCTAssertEqualObjects(testUser.profilePictureURL, [NSURL URLWithString:sourceDictionary[@"profile_picture"]], @"The profile picture should be equal");
}

- (void)testThatCommentInitializationWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"text" : @"Sample Comment"};
    
    BLCComment *testComment = [[BLCComment alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testComment.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testComment.text, sourceDictionary[@"text"], @"The text should be equal");
}

- (void)testThatMediaInitializationWorks
{
    
    //NSNumber *tempLikes = [NSNumber numberWithInt:3];
    
    NSDictionary *userDict = @{@"id": @"8675310",
                               @"username" : @"d'oh",
                               @"full_name" : @"Homer Simpson",
                               @"profile_picture" : @"http://www.example.com/example.jpg"};

    BLCUser *tempUser = [[BLCUser alloc] initWithDictionary:userDict];
    
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"user": userDict,
                                       @"likes": @{@"count": [NSNumber numberWithInt:3]},
                                       @"images": @{@"standard_resolution": @{@"url" :@"http://www.example.com/example.jpg"}}};
    
    
    BLCMedia *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.user.fullName, tempUser.fullName , @"The User Full Name should be equal");
    XCTAssertEqualObjects(testMedia.likeCount, [sourceDictionary[@"likes"][@"count"] stringValue], @"The number of likes should be equal");

    XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary[@"images"][@"standard_resolution"][@"url"]], @"The URL should be equal");

    //XCTAssertEqualObjects(testMedia.likeState, sourceDictionary[@"user_has_liked"], @"The ID number should be equal");

}

- (void) testThatComposeCommentWrites
{
    BLCComposeCommentView *commentView = [[BLCComposeCommentView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    
    BOOL before = commentView.isWritingComment;
    
    [commentView setText:@"test"];
    
    BOOL after = commentView.isWritingComment;
    
    XCTAssertFalse(before==after);
    
}

- (void) testThatComposeCommentDoesntWrite
{
    BLCComposeCommentView *commentView = [[BLCComposeCommentView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    
    BOOL before = commentView.isWritingComment;
    
    [commentView setText:@""];
    
    BOOL after = commentView.isWritingComment;
    
    XCTAssertFalse(before!=after);

}

- (void) testThatHeightsAreAccurate
{
    BLCMediaTableViewCell *layoutCell = [[BLCMediaTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"layoutCell"];
    
    
}


@end
