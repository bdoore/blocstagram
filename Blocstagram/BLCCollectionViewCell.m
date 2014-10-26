//
//  BLCCollectionViewCell.m
//  Blocstagram
//
//  Created by Brian Doore on 10/23/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import "BLCCollectionViewCell.h"

@interface BLCCollectionViewCell ()

@property (nonatomic, strong) NSMutableArray *filterImages;
@property (nonatomic, strong) NSMutableArray *filterTitles;

@property (nonatomic, strong) UICollectionView *filterCollectionView;


@end


@implementation BLCCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        for (UIView* v in self.subviews){
            NSLog(@"%i", v.tag);
            for (UIView* v2 in v.subviews) {
                NSLog(@"%i", v2.tag);
            }
        }
        
        static NSInteger imageViewTag = 1000;
        static NSInteger labelTag = 1001;
        
//        self.backgroundView
//        self.
        
        UIImageView *thumbnail = (UIImageView *)[self viewWithTag:imageViewTag];
        UILabel *label = (UILabel *)[self viewWithTag:labelTag];
        
        UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.filterCollectionView.collectionViewLayout;
        CGFloat thumbnailEdgeSize = flowLayout.itemSize.width;
        
        if (!thumbnail) {
            thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, thumbnailEdgeSize, thumbnailEdgeSize)];
            thumbnail.contentMode = UIViewContentModeScaleAspectFill;
            thumbnail.tag = imageViewTag;
            thumbnail.clipsToBounds = YES;
            
            [self.contentView addSubview:thumbnail];
        }
        
        if (!label) {
            label = [[UILabel alloc] initWithFrame:CGRectMake(0, thumbnailEdgeSize, thumbnailEdgeSize, 20)];
            label.tag = labelTag;
            label.textAlignment = NSTextAlignmentCenter;
            label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
            [self.contentView addSubview:label];
        }
        
//        thumbnail.image = self.filterImages[indexPath.row];
//        label.text = self.filterTitles[indexPath.row];
    }
    return self;
}



- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    
    
    return cell;
}


@end
