//
//  UIView+GSCircelScaleAnimation.m
//  leftDown2RightUpAnimation
//
//  Created by ZhouDamon on 16/1/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "UIView+GSCircelScaleAnimation.h"

@implementation UIView (GSCircelScaleAnimation)

- (void)startAnimation:(AnimationDirection)direction Duration:(CFTimeInterval)duration Delegate:(id)delegate
{
    CGRect originRect;
    switch (direction) {
        case AnimationDirection_NorthWest:
        {
            originRect = CGRectMake(0, 0, 0, 0);
        }
            break;
        case AnimationDirection_SouthWest:
        {
            originRect = CGRectMake(0, self.bounds.size.height, 0, 0);
        }
            break;
        case AnimationDirection_SouthEast:
        {
            originRect = CGRectMake(self.bounds.size.width, self.bounds.size.height, 0, 0);
        }
            break;
        case AnimationDirection_NorthEast:
        {
            originRect = CGRectMake(self.bounds.size.width, 0, 0, 0);
        }
            break;
        default:
            break;
    }

    UIBezierPath *maskStartBP =  [UIBezierPath bezierPathWithOvalInRect:originRect];
    CGFloat radius = sqrt((self.bounds.size.width * self.bounds.size.width)
                          + (self.bounds.size.height * self.bounds.size.height));
    UIBezierPath *maskFinalBP = [UIBezierPath bezierPathWithOvalInRect:CGRectInset(originRect, -radius, -radius)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = maskFinalBP.CGPath;
    self.layer.mask = maskLayer;
    
    CABasicAnimation *maskLayerAnimation = [CABasicAnimation animationWithKeyPath:@"path"];
    maskLayerAnimation.fromValue = (__bridge id)(maskStartBP.CGPath);
    maskLayerAnimation.toValue = (__bridge id)((maskFinalBP.CGPath));
    maskLayerAnimation.duration = duration;
    maskLayerAnimation.delegate = delegate;
    
    [maskLayer addAnimation:maskLayerAnimation forKey:@"path"];
    
    NSLog(@"animation:%@\n", maskLayerAnimation);
}

@end
