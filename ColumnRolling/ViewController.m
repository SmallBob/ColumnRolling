//
//  ViewController.m
//  ColumnRolling
//
//  Created by apple on 15/2/9.
//  Copyright (c) 2015年 王凯. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "DLImagedTabbarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    
    self.view.backgroundColor = [UIColor blackColor];
    self.title = @"Demo";
    
    
    self.tabedSlideView.frame = CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height);
    self.tabedSlideView.baseViewController = self;
    //    self.tabedSlideView.frame = CGRectMake(100,100, 100, 100);
    
    
    
    self.tabedSlideView.tabItemNormalColor = [UIColor blackColor];
    self.tabedSlideView.tabItemSelectedColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    self.tabedSlideView.tabbarTrackColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    self.tabedSlideView.tabbarBackgroundImage = [UIImage imageNamed:@"tabbarBk"];
    self.tabedSlideView.tabbarBottomSpacing = 3.0;
    
    DLTabedbarItem *item1 = [DLTabedbarItem itemWithTitle:@"最新" image:[UIImage imageNamed:@"goodsNew"] selectedImage:[UIImage imageNamed:@"goodsNew_d"]];
    
    DLTabedbarItem *item2 = [DLTabedbarItem itemWithTitle:@"最热" image:[UIImage imageNamed:@"goodsHot"] selectedImage:[UIImage imageNamed:@"goodsHot_d"]];
    DLTabedbarItem *item3 = [DLTabedbarItem itemWithTitle:@"价格" image:[UIImage imageNamed:@"goodsPrice"] selectedImage:[UIImage imageNamed:@"goodsPrice_d"]];
//    DLTabedbarItem*item4 = [DLTabedbarItem itemWithTitle:@"FOUR" image:[UIImage imageNamed:@"goodsPrice"] selectedImage:[UIImage imageNamed:@"goodsPrice_d"]];
    
    self.tabedSlideView.tabbarItems = @[item1, item2,item3];
    [self.tabedSlideView buildTabbar];
    
    self.tabedSlideView.selectedIndex = 0;

    // Do any additional setup after loading the view, typically from a nib.
}

- (int)numberOfTabsInDLTabedSlideView:(DLTabedSlideView *)sender{
    return 4;
}



- (UIViewController *)DLTabedSlideView:(DLTabedSlideView *)sender controllerAt:(int)index
{
    switch (index) {
        case 0:
        {
            OneViewController *ctrl = [self.storyboard instantiateViewControllerWithIdentifier:@"one"];
            return ctrl;
        }
        case 1:
        {
            TwoViewController *ctrl = [self.storyboard instantiateViewControllerWithIdentifier:@"two"];
            return ctrl;
        }
        case 2:
        {
            ThreeViewController*ctrl = [self.storyboard instantiateViewControllerWithIdentifier:@"three"];
            return ctrl;        }
            
            
        default:
            return nil;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
