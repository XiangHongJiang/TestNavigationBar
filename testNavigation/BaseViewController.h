//
//  BaseViewController.h
//  testNavigation
//
//  Created by JXH on 2017/8/15.
//  Copyright © 2017年 JXH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

/** 通过这个属性控制是否透明*/
@property (assign, nonatomic) BOOL transNavi;

- (void)transNavigationBar;//透明的导航
- (void)defaultNavigationBar;//默认有颜色的导航

@end
