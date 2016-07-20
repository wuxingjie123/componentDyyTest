//
//  UIAlertView+Block.h
//
//
//  Created by lbxia on 15/10/27.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>

//extern 

@implementation UIAlertView (Block)


static char key;



- (void)showWithBlock:(void(^)(NSInteger buttonIndex))block
{
    if (block) {
//        objc_removeAssociatedObjects(self);
        
        objc_setAssociatedObject(self, &key, nil, OBJC_ASSOCIATION_COPY);
        
        objc_setAssociatedObject(self, &key, block, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
   
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    void(^block)(NSInteger buttonIndex);
    block = objc_getAssociatedObject(self, &key);
    
    if (block)
        block(buttonIndex);
}



@end