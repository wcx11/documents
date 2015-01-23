//
//  CycleScrollView.h
//  cycleScrollTest
//
//  Created by Dai Yue on 14-11-25.
//  Copyright (c) 2014年 Qunar Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AuthCycleScrollViewDelegate;
@protocol AuthCycleScrollViewDatasource;

@interface CycleScrollView : UIView<UIScrollViewDelegate>{
    UIScrollView * _scrollView;
    UIPageControl *_pageControl;

    NSInteger _totalPages;
    NSInteger _curPage;

    NSMutableArray *_curViews;
}
@property (nonatomic,readonly) UIScrollView *scrollView;
@property (nonatomic,readonly) UIPageControl *pageControl;
@property (nonatomic,assign) NSInteger currentPage;
@property (nonatomic,assign,setter = setDataource:) id<AuthCycleScrollViewDatasource> datasource;
@property (nonatomic,assign,setter = setDelegate:) id<AuthCycleScrollViewDelegate> delegate;
@property NSTimer* timer;

- (void)reloadData;
//- (void)setViewContent:(UIView *)view atIndex:(NSInteger)index;

@end

@protocol AuthCycleScrollViewDelegate <NSObject>

@optional
- (void)didClickPage:(CycleScrollView *)csView atIndex:(NSInteger)index;

@end

@protocol AuthCycleScrollViewDatasource <NSObject>

@required
- (NSInteger)numberOfPages;
- (UIView *)pageAtIndex:(NSInteger)index;

@end