//
//  BLCUser.h
//  Blocstagram
//
//  Created by Brian Doore on 9/19/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface BLCUser : NSObject <NSCoding>


@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSURL *profilePictureURL;
@property (nonatomic, strong) UIImage *profilePicture;

- (instancetype) initWithDictionary:(NSDictionary *)userDictionary;


@end
