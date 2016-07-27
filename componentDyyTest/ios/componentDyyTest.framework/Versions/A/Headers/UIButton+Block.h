//
//  UIButton+Block.h
//  youhaoqianbao
//
//  Created by yang on 15/12/4.
//  Copyright © 2015年 zhongxinwangke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Block)


- (void)addActionWithBlock:(void(^)(UIButton *button)) block;



@end
