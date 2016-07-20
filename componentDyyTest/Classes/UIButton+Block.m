//
//  UIButton+Block.m
//  youhaoqianbao
//
//  Created by yang on 15/12/4.
//  Copyright © 2015年 zhongxinwangke. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

@implementation UIButton (Block)

static char key;


- (void)addActionWithBlock:(void(^)(UIButton *button)) block
{
    if (block) {
        //        objc_removeAssociatedObjects(self);
        
        objc_setAssociatedObject(self, &key, nil, OBJC_ASSOCIATION_COPY);
        
        objc_setAssociatedObject(self, &key, block, OBJC_ASSOCIATION_COPY);
        
        [self addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)buttonAction:(UIButton *)button
{
    void(^block)(UIButton *button);
    block = objc_getAssociatedObject(self, &key);
    
    block(button);
}



@end
