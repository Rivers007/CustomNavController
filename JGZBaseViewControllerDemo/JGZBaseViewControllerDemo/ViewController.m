//
//  ViewController.m
//  JGZBaseViewControllerDemo
//
//  Created by  jgzhu on 2018/4/28.
//  Copyright © 2018年  jgzhu. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.LeftButton.hidden=YES;
   
    UIButton *left0= [UIButton buttonWithType:UIButtonTypeCustom];
    [left0 setTitle:@"返回0" forState:UIControlStateNormal];
    // [left0 setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    [left0 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [left0 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left0 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    
    
    UIButton *left= [UIButton buttonWithType:UIButtonTypeCustom];
    [left setTitle:@"返回" forState:UIControlStateNormal];
    // [left setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    [left setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 25)];
    [left setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    
    UIButton *left1= [UIButton buttonWithType:UIButtonTypeCustom];
    [left1 setTitle:@"返回1" forState:UIControlStateNormal];
    // [left1 setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    [left1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [left1 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left1 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    self.NavLeftButtons=@[left0,left,left1];
    
    
    
    UIButton *left2= [UIButton buttonWithType:UIButtonTypeCustom];
    [left2 setTitle:@"返回2" forState:UIControlStateNormal];
    // [left2 setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    //[left2 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [left2 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left2 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    
    UIButton *left3= [UIButton buttonWithType:UIButtonTypeCustom];
    [left3 setTitle:@"返回3" forState:UIControlStateNormal];
    // [left3 setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    // [left3 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [left3 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left3 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    
    UIButton *left4= [UIButton buttonWithType:UIButtonTypeCustom];
    [left4 setTitle:@"返回4" forState:UIControlStateNormal];
    // [left4 setImage:[UIImage imageNamed:@"JGZNavBackIcon"] forState:UIControlStateNormal];
    // [left3 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [left4 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateNormal];
    [left4 setTitleColor:[UIColor colorWithRed:44.0/255 green:44.0/255 blue:44.0/255 alpha:1.0] forState:UIControlStateHighlighted];
    
    self.NavRightButtons=@[left2,left3,left4];
}
- (IBAction)nextpage:(UIButton *)sender {
    NextViewController *nextViewController=[[NextViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
