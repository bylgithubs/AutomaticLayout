//
//  ViewController.h
//  AutomaticLayout
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//创建父视图对象
@property(nonatomic,strong) UIView *superView;
//左上角
@property(nonatomic,strong) UILabel *label1;
//右上角
@property(nonatomic,strong) UILabel *label2;
//右下角
@property(nonatomic,strong) UILabel *label3;
//左下角
@property(nonatomic,strong) UILabel *label4;
@property(nonatomic,strong) UIView *viewCenter;


@end

