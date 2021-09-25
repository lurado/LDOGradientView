//
//  LDOGradientView.m
//  LDOGradientView
//
//  Created by Sebastian Ludwig on 02.02.2019.
//  Copyright (c) 2019 Julian Raschke und Sebastian Ludwig GbR. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import "LDOGradientView.h"

CGPoint SquarePointForAngle(CGFloat angle) {
    // take from https://math.stackexchange.com/questions/2468060
    angle -= M_PI_2;
    const CGFloat cosine = cos(angle);
    const CGFloat sine = sin(angle);
    const CGFloat max = MAX(ABS(cosine), ABS(sine));
    const CGFloat x = 0.5 / max * cosine;
    const CGFloat y = 0.5 / max * sine;
    return CGPointMake(x + 0.5, y + 0.5);
}

@implementation LDOGradientView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        _startAlpha = 1;
        _endAlpha = 1;
    }
    return self;
}

+ (Class)layerClass
{
    return [CAGradientLayer class];
}

- (void)updateGradient
{
    CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
    
    if (!self.startColor || !self.endColor) {
        gradientLayer.colors = @[];
        return;
    }
    
    CGFloat rotation = self.rotation / 180.0 * M_PI;
    
    CGPoint start = SquarePointForAngle(rotation);
    CGPoint end = SquarePointForAngle(rotation + M_PI);
    
    CGVector line = CGVectorMake(end.x - start.x, end.y - start.y);
    
    start.x += line.dx * self.startOffset;
    start.y += line.dy * self.startOffset;
    
    end.x -= line.dx * self.endOffset;
    end.y -= line.dy * self.endOffset;
    
    gradientLayer.startPoint = start;
    gradientLayer.endPoint = end;
    
    UIColor *startColor = [self.startColor colorWithAlphaComponent:self.startAlpha];
    UIColor *endColor = [self.endColor colorWithAlphaComponent:self.endAlpha];
    gradientLayer.colors = @[(id)startColor.CGColor, (id)endColor.CGColor];
}

- (void)setRotation:(CGFloat)rotation
{
    _rotation = rotation;
    [self updateGradient];
}

- (void)setStartOffset:(CGFloat)startOffset
{
    _startOffset = startOffset;
    [self updateGradient];
}

- (void)setStartAlpha:(CGFloat)startAlpha
{
    _startAlpha = startAlpha;
    [self updateGradient];
}

- (void)setEndOffset:(CGFloat)endOffset
{
    _endOffset = endOffset;
    [self updateGradient];
}

- (void)setStartColor:(UIColor *)startColor
{
    _startColor = startColor;
    [self updateGradient];
}

- (void)setEndColor:(UIColor *)endColor
{
    _endColor = endColor;
    [self updateGradient];
}

- (void)setEndAlpha:(CGFloat)endAlpha
{
    _endAlpha = endAlpha;
    [self updateGradient];
}

@end
