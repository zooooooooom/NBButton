//
//  NBViewController.m
//  NBButton
//
//  Created by shiyingfeng on 12/18/2017.
//  Copyright (c) 2017 shiyingfeng. All rights reserved.
//

#import "NBViewController.h"
#import <NBButton/NBButton.h>
#import <Masonry/Masonry.h>

@interface NBViewController ()

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    CGFloat btnW = 50.0f;
    // 和正常的UIButton一样的使用方式
    // 1.正常使用方式  设置图片 文字 大小 文字大小 背景颜色
    NBButton *btn0 = [[NBButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-btnW/2, btnW, btnW, btnW)];
    btn0.backgroundColor = [UIColor greenColor];
    [btn0 setTitle:@"点赞" forState:UIControlStateNormal];
    [btn0 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn0 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn0.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn0 setImage:[UIImage imageNamed:@"timeline_icon_like"] forState:UIControlStateNormal];
    [btn0 setImage:[UIImage imageNamed:@"timeline_icon_unlike"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn0];
    
    
    // 1.设置间隔
    NBButton *btn1 = [NBButton new];
    btn1.backgroundColor = [UIColor greenColor];
    [btn1 setTitle:@"点赞" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn1.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn1 setImage:[UIImage imageNamed:@"timeline_icon_like"] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"timeline_icon_unlike"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn1];
    btn1.spaceBetweenTitleAndImage = 10;
    
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(btn0.mas_bottom).offset(20);
        make.width.mas_equalTo(100);
    }];
    
    // 1.上下
    NBButton *btn2 = [NBButton new];
    btn2.backgroundColor = [UIColor greenColor];
    [btn2 setTitle:@"点赞" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn2.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn2 setImage:[UIImage imageNamed:@"timeline_icon_like"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"timeline_icon_unlike"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn2];
    btn2.spaceBetweenTitleAndImage = 10;
    btn2.imageAlignment = NBImageAlignmentTop;
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(btn1.mas_bottom).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    
    // 1.下上
    NBButton *btn3 = [NBButton new];
    btn3.backgroundColor = [UIColor greenColor];
    [btn3 setTitle:@"点赞" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn3.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn3 setImage:[UIImage imageNamed:@"timeline_icon_like"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"timeline_icon_unlike"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn3];
    btn3.spaceBetweenTitleAndImage = 10;
    btn3.imageAlignment = NBImageAlignmentBottom;
    
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(btn2.mas_bottom).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    
    // 1.右左
    NBButton *btn4 = [NBButton new];
    btn4.backgroundColor = [UIColor greenColor];
    [btn4 setTitle:@"点赞" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn4.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn4 setImage:[UIImage imageNamed:@"timeline_icon_like"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"timeline_icon_unlike"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn4];
    btn4.spaceBetweenTitleAndImage = 10;
    btn4.imageAlignment = NBImageAlignmentRight;
    
    [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(btn3.mas_bottom).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    
    
    [btn0 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnClick:(UIButton *)btn
{
    
    if (!btn.isSelected)
    {
        btn.imageView.transform = CGAffineTransformRotate(btn.imageView.transform, M_PI-0.001);
    }
    else
    {
        btn.imageView.transform = CGAffineTransformIdentity;
    }
    
    btn.selected = !btn.isSelected;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
