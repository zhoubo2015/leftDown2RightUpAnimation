//
//  UIView+GSCircelScaleAnimation.h
//  leftDown2RightUpAnimation
//
//  Created by ZhouDamon on 16/1/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, AnimationDirection)
{
    AnimationDirection_NorthWest = 0,
    AnimationDirection_SouthWest,
    AnimationDirection_SouthEast,
    AnimationDirection_NorthEast
};

@interface UIView (GSCircelScaleAnimation)

/*Delegate is optional
//If you want to know when the animation ends, you need use this delegate
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
*/
- (void)startAnimation:(AnimationDirection)direction Duration:(CFTimeInterval)duration Delegate:(id)delegate;

@end
