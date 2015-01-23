//
//  AuthViewController.h
//  cycleScrollTest
//
//  Created by Dai Yue on 14-11-25.
//  Copyright (c) 2014年 Qunar Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CycleScrollView.h"

@interface AuthViewController : UIPageViewController<AuthCycleScrollViewDatasource, AuthCycleScrollViewDelegate>

@end
