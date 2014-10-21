//
//  BLCImageLibraryViewController.h
//  Blocstagram
//
//  Created by Brian Doore on 10/20/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCImageLibraryViewController;

@protocol BLCImageLibraryViewControllerDelegate <NSObject>

- (void) imageLibraryViewController:(BLCImageLibraryViewController *)imageLibraryViewController didCompleteWithImage:(UIImage *)image;

@end


@interface BLCImageLibraryViewController : UICollectionViewController

@property (nonatomic, weak) NSObject <BLCImageLibraryViewControllerDelegate> *delegate;

@end
