//
//  JGZBaseViewController.h
//  navdemo
//
//  Created by  jgzhu on 2018/4/27.
//  Copyright © 2018年  jgzhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#define IS_IPHONE_X ([UIScreen mainScreen].bounds.size.height == 812.0f) ? YES : NO
//#define NavBarHeight (IS_IPHONE_X == YES)?88.0f:64.0f
@interface JGZBaseViewController : UIViewController
@property (nonatomic,strong)UIView *NavigationBarView;
@property (nonatomic,copy)NSString *TitleString;
@property (nonatomic,strong)UILabel *TitleLabel;
@property (nonatomic,strong)UIButton *LeftButton;
@property (nonatomic,strong)NSArray<UIButton *> *NavLeftButtons;
@property (nonatomic,strong)NSArray<UIButton *> *NavRightButtons;
@end
