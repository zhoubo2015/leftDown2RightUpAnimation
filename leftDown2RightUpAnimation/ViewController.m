//
//  ViewController.m
//  leftDown2RightUpAnimation
//
//  Created by ZhouDamon on 16/1/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ViewController.h"
#import "BaseView.h"
#import "UIView+GSCircelScaleAnimation.h"
#include "SecondViewController.h"

@interface ViewController ()
{
    BaseView *animationedView;
    UIButton *button;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 50, 100, 44);
//    btn.center = self.view.center;
    [button setBackgroundColor:[UIColor blackColor]];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button setTitle:@"Animation" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    NSLog(@"%f, %f", self.view.center.x, self.view.center.y);
    animationedView = [[BaseView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    animationedView.backgroundColor = [UIColor greenColor];
    animationedView.hidden = YES;
    [self.view addSubview:animationedView];
    NSLog(@"%@", animationedView);
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 150, 100, 44);
    //    btn.center = self.view.center;
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setTitle:@"Pop" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonClickedPop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonClickedPop:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonClicked:(id)sender
{
    animationedView.hidden = NO;
    
    [animationedView startAnimation:AnimationDirection_NorthEast Duration:0.7f Delegate:self];
    return;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    NSLog(@"animation:%@\n", anim);
    animationedView.layer.mask = nil;
    animationedView.hidden = YES;
}

@end
