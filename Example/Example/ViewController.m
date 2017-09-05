//
//  ViewController.m
//  Example
//
//  Created by Jany on 17/9/5.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "HeartView.h"

NSInteger const heartWidth = 200;
NSInteger const heartHeight = 200;

@interface ViewController ()
{
    HeartView *heartView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    heartView = [[HeartView alloc]initWithFrame:CGRectMake(0.f, 44.f, self.view.frame.size.width, self.view.frame.size.width)];
    
    heartView.rate = 0.5;
    heartView.lineWidth = 1;
    heartView.strokeColor = [UIColor orangeColor];
    heartView.fillColor = [UIColor redColor];
    heartView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:heartView];
    
    [self loadSlider];
}

- (void)loadSlider
{
    UISlider *valueSlider = [[UISlider alloc]initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, self.view.frame.size.height-150, 300, 50)];
    valueSlider.minimumValue = 0.0;
    valueSlider.maximumValue = 1.0;
    valueSlider.value = 0.5;
    [valueSlider addTarget:self action:@selector(valueChangedAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:valueSlider];
}

- (void)valueChangedAction:(UISlider*)slider
{
    heartView.rate = slider.value;
}


@end
