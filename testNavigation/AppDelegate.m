//
//  AppDelegate.m
//  testNavigation
//
//  Created by JXH on 2017/8/15.
//  Copyright © 2017年 JXH. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseNavigationController.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [[BaseNavigationController alloc] initWithRootViewController:[[HomeViewController alloc]init]];
    
    [self defaultNavi];
    
    return YES;
}
- (void)defaultNavi {
    
//    // 设置导航栏默认的背景颜色
//    [UIColor wr_setDefaultNavBarBarTintColor:[UIColor blueColor]];
//    // 设置导航栏所有按钮的默认颜色
//    [UIColor wr_setDefaultNavBarTintColor:[UIColor whiteColor]];
//    // 设置导航栏标题默认颜色
//    [UIColor wr_setDefaultNavBarTitleColor:[UIColor whiteColor]];
//    // 统一设置状态栏样式
//    [UIColor wr_setDefaultStatusBarStyle:UIStatusBarStyleLightContent];
//    // 如果需要设置导航栏底部分割线隐藏，可以在这里统一设置
//    [UIColor wr_setDefaultNavBarShadowImageHidden:YES];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
