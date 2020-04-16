//
//  XMGButton.m
//  扩大按钮的点击区域
//
//  Created by 谭志伟 on 2020/4/15.
//  Copyright © 2020 谭志伟. All rights reserved.
//

#import "XMGButton.h"

@implementation XMGButton

- (instancetype)init{
    if (self = [super init]) {
        self.layer.backgroundColor = UIColor.redColor.CGColor;
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
         self.layer.backgroundColor = UIColor.redColor.CGColor;
    }
    
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder{
    if (self = [super initWithCoder:coder]) {
         self.layer.backgroundColor = UIColor.redColor.CGColor;
    }
    
    return self;
}


- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    CGRect  bounds =  self.bounds;
    
    bounds =  CGRectInset(bounds, 10, 10);
    
    return CGRectContainsPoint(bounds, point);
    
}

@end
