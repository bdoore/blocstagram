//
//  BLCMediaFullScreenAnimator.h
//  Blocstagram
//
//  Created by Brian Doore on 10/6/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface BLCMediaFullScreenAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL presenting;
@property (nonatomic, weak) UIImageView *cellImageView;

@end