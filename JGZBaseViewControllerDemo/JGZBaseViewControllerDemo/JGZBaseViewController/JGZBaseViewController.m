//
//  JGZBaseViewController.m
//  navdemo
//
//  Created by  jgzhu on 2018/4/27.
//  Copyright © 2018年  jgzhu. All rights reserved.
//

#import "JGZBaseViewController.h"

@interface JGZBaseViewController ()
@property (nonatomic,assign)CGFloat NavBarHeight;
@end

@implementation JGZBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.NavBarHeight=(IS_IPHONE_X == YES)?88.0f:64.0f;
    self.view.backgroundColor=[UIColor whiteColor];
    [self createNav];
}
// 创建导航栏
- (void)createNav{
    // 在主线程异步加载，使下面的方法最后执行，防止其他的控件挡住了导航栏
        // 隐藏系统导航栏
        self.navigationController.navigationBar.hidden = YES;
        // 创建假的导航栏
    
        UIView *navView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.NavBarHeight)];
        self.NavigationBarView=navView;
        navView.backgroundColor = [UIColor cyanColor];
        [self.view addSubview:navView];

        // 创建导航栏的titleLabel
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0,44)];
        titleLabel.text = @"首页";
        [titleLabel sizeToFit];
        self.TitleLabel=titleLabel;
    NSLog(@"%f",self.NavBarHeight-44.0f);
        titleLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - titleLabel.frame.size.width / 2, self.NavBarHeight - 44.0, titleLabel.frame.size.width, 44);
        [navView addSubview:titleLabel];
        // 创建导航栏左边按钮
        UIButton *left= [UIButton buttonWithType:UIButtonTypeCustom];
        [navView addSubview:left];
        self.LeftButton=left;
          [left setTitle:@"返回" forState:UIControlStateNormal];
        [left setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
         [left setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
        [left setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
        [left setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
        left.frame = CGRectMake(0, self.NavBarHeight-44, 100, 44);
         [left addTarget:self action:@selector(leftback) forControlEvents:UIControlEventTouchUpInside];
       
}
-(void)leftback{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)setTitleLabel:(UILabel *)TitleLabel{
    _TitleLabel=TitleLabel;
    [TitleLabel sizeToFit];
     _TitleLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - TitleLabel.frame.size.width / 2, self.NavBarHeight-44, TitleLabel.frame.size.width, 44);
    
}
-(void)setTitleString:(NSString *)TitleString{
    _TitleString=TitleString;
    self.TitleLabel.text=TitleString;
    [self.TitleLabel sizeToFit];
    self.TitleLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - self.TitleLabel.frame.size.width / 2, self.NavBarHeight-44, self.TitleLabel.frame.size.width, 44);
}
-(void)setLeftButton:(UIButton *)LeftButton{
    _LeftButton=LeftButton;
    _LeftButton.frame = CGRectMake(0, self.NavBarHeight-44, 100, 44);
    
}
-(void)setNavigationBarView:(UIView *)NavigationBarView{
    _NavigationBarView=NavigationBarView;
    
}
-(void)setNavLeftButtons:(NSArray<UIButton *> *)NavLeftButtons{
    if (NavLeftButtons.count==1) {
        self.LeftButton=[NavLeftButtons firstObject];
    }else if (NavLeftButtons.count>1) {
        self.LeftButton.hidden=YES;
        CGFloat leftmargin=10;
        CGFloat margin=5;
        
        for (int i=0; i<NavLeftButtons.count; i++) {
            UIButton *btn=NavLeftButtons[i];
            [btn sizeToFit];
            CGRect frame = btn.frame;
            frame.size.height=44;
            
            frame.origin=CGPointMake(leftmargin, self.NavBarHeight-44);
            leftmargin=leftmargin+btn.frame.size.width+margin;
            btn.frame = frame;
            [self.NavigationBarView addSubview:btn];
        }
    }
    
}
-(void)setNavRightButtons:(NSArray<UIButton *> *)NavRightButtons{
    
    CGFloat rightmargin=10;
    CGFloat margin=5;
    for (int i=0; i<NavRightButtons.count; i++) {
        UIButton *btn=NavRightButtons[NavRightButtons.count-1-i];
        [btn sizeToFit];
        CGRect frame = btn.frame;
        frame.size.height=44;
        rightmargin=rightmargin+btn.frame.size.width+margin;
        frame.origin=CGPointMake(self.NavigationBarView.frame.size.width-rightmargin, self.NavBarHeight-44);
        btn.frame = frame;
        [self.NavigationBarView addSubview:btn];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
