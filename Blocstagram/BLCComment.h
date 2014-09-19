//
//  BLCComment.h
//  Blocstagram
//
//  Created by Brian Doore on 9/19/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class BLCUser;

@interface BLCComment : NSObject

@property (nonatomic, strong) NSString *idNumber;

@property (nonatomic, strong) BLCUser *from;
@property (nonatomic, strong) NSString *text;

@end
