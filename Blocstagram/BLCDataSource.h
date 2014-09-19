//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Brian Doore on 9/19/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLCDataSource : NSObject

+(instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSMutableArray *mediaItems;


@end
