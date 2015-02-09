//
//  ViewController.h
//  ColumnRolling
//
//  Created by apple on 15/2/9.
//  Copyright (c) 2015年 王凯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTabedSlideView.h"

@interface ViewController : UIViewController<DLTabedSlideViewDelegate>


@property (weak, nonatomic) IBOutlet DLTabedSlideView *tabedSlideView;

@end

