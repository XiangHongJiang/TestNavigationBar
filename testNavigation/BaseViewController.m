//
//  BaseViewController.m
//  testNavigation
//
//  Created by JXH on 2017/8/15.
//  Copyright © 2017年 JXH. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) UIView *navigationBarView;
@end

@implementation BaseViewController
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.transNavi) {
        self.navigationBarView = [self setupNavigationBarSubViews];
    } else {
        [self defaultNavigationBar];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.transNavi = NO;
    
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:sv];
    sv.backgroundColor = [UIColor yellowColor];
    sv.contentSize = CGSizeMake(self.view.bounds.size.width, 1000);
    sv.delegate = self;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (self.transNavi) {
        self.navigationController.navigationBar.translucent = YES;
        [self setupNavigationBarSubViews];
    } else {
        [self defaultNavigationBar];
    }
    
}

- (UIView *)setupNavigationBarSubViews {
    for (UIView *view in self.navigationController.navigationBar.subviews) {
        if ([NSStringFromClass([view class])isEqualToString:@"_UIBarBackground"]) {
            view.backgroundColor = [UIColor colorWithRed:6 / 255.0 green:39/255.0 blue:63/255.0 alpha:0.7];
            view.alpha = 0;
            for (UIView *effect in view.subviews) {
                effect.hidden = YES;
            }
            return view;
        }
    }
    return nil;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.navigationBarView.alpha = 1;
    for (UIView *effect in self.navigationBarView.subviews) {
        effect.hidden = NO;
    }
    self.navigationBarView = nil;
}
- (void)defaultNavigationBar {
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor blueColor]] forBarMetrics:UIBarMetricsDefault];
    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor blueColor]] forBarMetrics:UIBarMetricsDefault];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    self.navigationBarView.alpha = scrollView.contentOffset.y / 100;
    if (!self.navigationBarView.backgroundColor) {
        self.navigationBarView.backgroundColor = [UIColor colorWithRed:6 / 255.0 green:39/255.0 blue:63/255.0 alpha:0.7];
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
