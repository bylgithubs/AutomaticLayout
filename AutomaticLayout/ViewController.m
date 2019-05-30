//
//  ViewController.m
//  AutomaticLayout
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //父视图
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(20, 20, 180, 280);
    _superView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_superView];    //左上角视图
    _label1 = [[UILabel alloc] init];
    _label1.frame = CGRectMake(0, 0, 40, 40);
    _label1.text = @"1";
    _label1.backgroundColor = [UIColor greenColor];
    //右上角视图
    _label2 = [[UILabel alloc] init];
    _label2.frame = CGRectMake(_superView.frame.size.width - 40, 0, 40, 40);
    _label2.text = @"2";
    _label2.backgroundColor = [UIColor greenColor];
    //左下角视图
    _label3 = [[UILabel alloc] init];
    _label3.frame = CGRectMake(0, _superView.frame.size.height - 40, 40, 40);
    _label3.text = @"3";
    _label3.backgroundColor = [UIColor greenColor];
    //右下角视图
    _label4 = [[UILabel alloc] init];
    _label4.frame = CGRectMake(_superView.frame.size.width - 40, _superView.frame.size.height - 40, 40, 40);
    _label4.text = @"4";
    _label4.backgroundColor = [UIColor greenColor];
    
    [_superView addSubview:_label1];
    [_superView addSubview:_label2];
    [_superView addSubview:_label3];
    [_superView addSubview:_label4];
    
    _viewCenter = [[UIView alloc] init];
    _viewCenter.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _viewCenter.center = CGPointMake(_superView.frame.size.width/2, _superView.frame.size.height/2);
    _viewCenter.backgroundColor = [UIColor orangeColor];
    [_superView addSubview:_viewCenter];
    
    //自动布局属性设置，通过此变量来调整视图在父视图的位置和大小
    //视图距离父视图的左侧可以动态变化
    _label2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _label3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    _label4.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleTopMargin;
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static BOOL isLarge = NO;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    if (isLarge == NO){
        _superView.frame = CGRectMake(10, 10, 300, 480);
    }else{
        _superView.frame = CGRectMake(20, 20, 180, 280);
    }
    [UIView commitAnimations];
    isLarge = !isLarge;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
