//
//  ViewController.m
//  UIKitMainTreadCheckDemo
//
//  Created by Ossey on 2017/5/10.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIImageView *imageView = [UIImageView new];
    [self.view addSubview:imageView];
    imageView.frame = self.view.bounds;
    imageView.image = [UIImage imageNamed:@"1"];
    
    dispatch_async(dispatch_queue_create("com.ossey.demo", DISPATCH_QUEUE_CONCURRENT), ^{
        imageView.frame = CGRectMake(0, 0, 300, 380);
        [self.view setNeedsDisplay];
    });

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
