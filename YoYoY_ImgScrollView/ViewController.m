//
//  ViewController.m
//  YoYoY_ImgScrollView
//
//  Created by zx on 16/5/3.
//  Copyright © 2016年 cn.yoyoy.mw. All rights reserved.
//

#import "ViewController.h"
#import "ImageScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ImageScrollView *imgScrollView = [[ImageScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    [self.view addSubview:imgScrollView];
    imgScrollView.pics = @[@"http://g.hiphotos.baidu.com/zhidao/pic/item/8326cffc1e178a823f2331f0f703738da977e847.jpg", @"http://imgsrc.baidu.com/forum/pic/item/d833c895d143ad4bf8e5b06c82025aafa50f0656.jpg", @"http://h.hiphotos.baidu.com/zhidao/pic/item/f703738da97739123c6dc373fe198618367ae25d.jpg"];
    imgScrollView.pageColor = [UIColor whiteColor];
    imgScrollView.pageSelColor = [UIColor greenColor];
    [imgScrollView returnIndex:^(NSInteger index) {
        NSLog(@"点击了第%zi张", index);
    }];
    [imgScrollView reloadView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
