//
//  SecondViewController.m
//  leftDown2RightUpAnimation
//
//  Created by ZhouDamon on 16/1/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 100, 100, 44);
    //    btn.center = self.view.center;
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonClickedPush:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonClickedPush:(id)sender
{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
