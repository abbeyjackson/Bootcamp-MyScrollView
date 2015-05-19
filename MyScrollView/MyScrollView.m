//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Abegael Jackson on 2015-05-19.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super initWithCoder:aDecoder];
//    [self setup];
//    return self;
//}
//
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    [self setup];
//    return self;
//}
//
//- (void)setup
//{
//    [self addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureRecognizer:)]];
//    
//    self.backgroundColor = [UIColor greenColor];
//}
//
//- (void)handlePanGestureRecognizer:(UIPanGestureRecognizer*)gestureRecognizer
//{
//    NSLog(@"Did pan");
//}

- (IBAction)handlePanGestureRecognizer:(UIPanGestureRecognizer*)gestureRecognizer{
    CGPoint translation = [gestureRecognizer translationInView:self];
    CGRect bounds = self.bounds;
    
    // Translate the view's bounds, but do not permit values that would violate contentSize
    CGFloat newBoundsOriginX = bounds.origin.x - translation.x;
    CGFloat minBoundsOriginX = 0.0;
    CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width;
    bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    CGFloat newBoundsOriginY = bounds.origin.y - translation.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    self.bounds = bounds;
    [gestureRecognizer setTranslation:CGPointZero inView:self];
}

@end
