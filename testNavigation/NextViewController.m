//
//  NextViewController.m
//  testNavigation
//
//  Created by JXH on 2017/8/15.
//  Copyright © 2017年 JXH. All rights reserved.
//

#import "NextViewController.h"
#import "SecViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 一行代码搞定导航栏颜色
//    [self wr_setNavBarBarTintColor:[UIColor whiteColor]];
    // 一行代码搞定导航栏透明度
//    [self wr_setNavBarBackgroundAlpha:0];
//    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"nidaye";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick)];
    
}
- (void)rightClick {
    [self.navigationController pushViewController:[[SecViewController alloc] init] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[[SecViewController alloc] init] animated:YES];
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
