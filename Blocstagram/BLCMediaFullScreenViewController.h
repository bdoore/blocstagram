//
//  BLCMediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Brian Doore on 10/3/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCMedia;

@interface BLCMediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) BLCMedia *media;


- (instancetype) initWithMedia:(BLCMedia *)media;

- (void) centerScrollView;

- (void) recalculateZoomScale;

@end