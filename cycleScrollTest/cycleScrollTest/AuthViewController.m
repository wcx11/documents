//
//  AuthViewController.m
//  cycleScrollTest
//
//  Created by Dai Yue on 14-11-25.
//  Copyright (c) 2014年 Qunar Inc. All rights reserved.
//

#import "AuthViewController.h"

@interface AuthViewController ()

@end

@implementation AuthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}
-(void) viewDidAppear:(BOOL)animated{
    CycleScrollView *csView = [[CycleScrollView alloc] initWithFrame:self.view.bounds];
    csView.delegate = self;
    csView.datasource = self;
    [self.view addSubview:csView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)numberOfPages
{
    return 5;
}

- (UIView *)pageAtIndex:(NSInteger)index
{
    UIView * view = [[UIView alloc]initWithFrame:self.view.bounds];
    UILabel *l = [[UILabel alloc] initWithFrame:self.view.bounds];
    l.text = [NSString stringWithFormat:@"%d",index];
    l.font = [UIFont systemFontOfSize:72];
    l.textAlignment = UITextAlignmentCenter;
    l.backgroundColor = [UIColor blueColor];
    return l;
}

- (void)didClickPage:(CycleScrollView *)csView atIndex:(NSInteger)index
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:[NSString stringWithFormat:@"当前点击第%ld个页面",index]
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
