//
//  HomeViewController.m
//  testNavigation
//
//  Created by JXH on 2017/8/15.
//  Copyright © 2017年 JXH. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeDetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor cyanColor];
    self.title = @"hehe";
    self.transNavi = YES;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick)];
}
- (void)rightClick {
    [self.navigationController pushViewController:[[HomeDetailViewController alloc] init] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[[HomeDetailViewController alloc] init] animated:YES];
}


@end
