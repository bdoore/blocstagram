//
//  BLCCropBox.m
//  Blocstagram
//
//  Created by Brian Doore on 10/20/14.
//  Copyright (c) 2014 Brian Doore. All rights reserved.
//

#import "BLCCropBox.h"

@interface BLCCropBox ()

@property (nonatomic, strong) NSArray *horizontalLines;
@property (nonatomic, strong) NSArray *verticalLines;
@property (nonatomic, strong) UIToolbar *topView;
@property (nonatomic, strong) UIToolbar *bottomView;

@end


@implementation BLCCropBox

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = NO;
        
        self.topView = [UIToolbar new];
        self.bottomView = [UIToolbar new];
        
        
        UIColor *whiteBG = [UIColor colorWithWhite:1.0 alpha:.15];
        self.topView.barTintColor = whiteBG;
        self.bottomView.barTintColor = whiteBG;
        self.topView.alpha = 0.5;
        self.bottomView.alpha = 0.5;
        
        // Initialization code
        NSArray *lines = [self.horizontalLines arrayByAddingObjectsFromArray:self.verticalLines];
        for (UIView *lineView in lines) {
            [self addSubview:lineView];
        }
        
        [self addSubview:self.topView];
        [self addSubview:self.bottomView];
        

        
    }
    return self;
}

- (NSArray *) horizontalLines {
    if (!_horizontalLines) {
        _horizontalLines = [self newArrayOfFourWhiteViews];
    }
    
    return _horizontalLines;
}

- (NSArray *) verticalLines {
    if (!_verticalLines) {
        _verticalLines = [self newArrayOfFourWhiteViews];
    }
    
    return _verticalLines;
}

- (NSArray *) newArrayOfFourWhiteViews {
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < 4; i++) {
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor whiteColor];
        [array addObject:view];
    }
    
    return array;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat thirdOfWidth = width / 3;
    
    self.topView.frame = CGRectMake(0, 0, width, 44);
    
    CGFloat yOriginOfBottomView = CGRectGetMaxY(self.topView.frame) + width;
    CGFloat heightOfBottomView = CGRectGetHeight(self.frame) - yOriginOfBottomView;
    self.bottomView.frame = CGRectMake(0, yOriginOfBottomView, width, heightOfBottomView);

    
    for (int i = 0; i < 4; i++) {
        UIView *horizontalLine = self.horizontalLines[i];
        UIView *verticalLine = self.verticalLines[i];
        
        horizontalLine.frame = CGRectMake(0, (i * thirdOfWidth), width, 0.5);
        
        CGRect verticalFrame = CGRectMake(i * thirdOfWidth, 0, 0.5, width);
        
        if (i == 3) {
            verticalFrame.origin.x -= 0.5;
        }
        
        verticalLine.frame = verticalFrame;
    }
}

@end
