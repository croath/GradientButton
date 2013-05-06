//
//  GradientButton.m
//  DoubanMovie
//
//  Created by Croath on 13-5-6.
//  Copyright (c) 2013年 Croath. All rights reserved.
//

#import "GradientButton.h"
#import <QuartzCore/QuartzCore.h>

@interface GradientButton(){
  CAGradientLayer *_gradientLayer;
}

@end

@implementation GradientButton

- (id)initWithFrame:(CGRect)frame
       normalColors:(NSArray*)normalColors
  highlightedColors:(NSArray*)highlightedColors
     selectedColors:(NSArray*)selectedColors
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
    NSMutableArray *arr = [NSMutableArray array];
    for (UIColor* color in normalColors) {
      [arr addObject:(id)(color.CGColor)];
    }
    _normalColors = [NSArray arrayWithArray:arr];
    
    arr = [NSMutableArray array];
    for (UIColor* color in highlightedColors) {
      [arr addObject:(id)(color.CGColor)];
    }
    _highlightedColors = [NSArray arrayWithArray:arr];

    arr = [NSMutableArray array];
    for (UIColor* color in selectedColors) {
      [arr addObject:(id)(color.CGColor)];
    }
    _selectedColors = [NSArray arrayWithArray:arr];
    
    _gradientLayer = [[CAGradientLayer alloc] init];
    _gradientLayer.frame = self.bounds;
    _gradientLayer.colors = _normalColors;
    [self.layer addSublayer:_gradientLayer];
  }
  return self;
}

- (void)setHighlighted:(BOOL)highlighted{
  [super setHighlighted:highlighted];
  if (highlighted) {
    _gradientLayer.colors = _highlightedColors;
  } else {
    _gradientLayer.colors = _normalColors;
  }
}

- (void)setSelected:(BOOL)selected{
  [super setSelected:selected];
  if (selected) {
    _gradientLayer.colors = _selectedColors;
  } else {
    _gradientLayer.colors = _normalColors;
  }
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
