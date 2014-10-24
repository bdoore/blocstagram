//
//  BLCCollectionViewCell.h
//  Blocstagram
//
//  Created by Brian Doore on 10/23/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCMedia, BLCCollectionViewCell, BLCPostToInstagramViewController;

@interface BLCCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) BLCMedia *mediaItem;

@end
