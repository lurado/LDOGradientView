//
//  LDOGradientView.h
//  LDOGradientView
//
//  Created by Sebastian Ludwig on 02.02.2019.
//  Copyright (c) 2019 Julian Raschke und Sebastian Ludwig GbR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDOGradientView : UIView

@property (nullable, nonatomic) IBInspectable UIColor *startColor;
/// [0, 1]
@property (nonatomic) IBInspectable CGFloat startOffset;

@property (nullable, nonatomic) IBInspectable UIColor *endColor;
@property (nonatomic) IBInspectable CGFloat endOffset;

/// in degrees, clockwise, 0 middle top
@property (nonatomic) IBInspectable CGFloat rotation;

@end
