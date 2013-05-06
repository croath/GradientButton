//
//  GradientButton.h
//  DoubanMovie
//
//  Created by Croath on 13-5-6.
//  Copyright (c) 2013年 Croath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GradientButton : UIButton

@property (nonatomic, strong, readonly) NSArray *normalColors;
@property (nonatomic, strong, readonly) NSArray *highlightedColors;
@property (nonatomic, strong, readonly) NSArray *selectedColors;

- (id)initWithFrame:(CGRect)frame
       normalColors:(NSArray*)normalColors
  highlightedColors:(NSArray*)highlightedColors
     selectedColors:(NSArray*)selectedColors;
@end
