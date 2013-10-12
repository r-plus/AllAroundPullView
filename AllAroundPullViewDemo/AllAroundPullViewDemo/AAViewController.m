//
//  AAViewController.m
//  AllAroundPullViewDemo
//
//  Created by  on 12/09/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AAViewController.h"
#import "AllAroundPullView.h"

@implementation AAViewController

@synthesize scrollView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.scrollView.alwaysBounceHorizontal = YES;
  self.scrollView.alwaysBounceVertical = YES;
  self.scrollView.contentSize = [UIScreen mainScreen].bounds.size;

  // top
  AllAroundPullView *topPullView = [[AllAroundPullView alloc] initWithScrollView:self.scrollView position:AllAroundPullViewPositionTop action:^(AllAroundPullView *view){
    NSLog(@"--");
    [view performSelector:@selector(finishedLoading) withObject:nil afterDelay:1.0f];
  }];
  [self.scrollView addSubview:topPullView];
  //[topPullView release];

  // bottom
  AllAroundPullView *bottomPullView = [[AllAroundPullView alloc] initWithScrollView:self.scrollView position:AllAroundPullViewPositionBottom action:^(AllAroundPullView *view){
    NSLog(@"--");
    [view performSelector:@selector(finishedLoading) withObject:nil afterDelay:1.0f];
  }];
  [self.scrollView addSubview:bottomPullView];
  //[bottomPullView release];

  // left
  AllAroundPullView *leftPullView = [[AllAroundPullView alloc] initWithScrollView:self.scrollView position:AllAroundPullViewPositionLeft action:^(AllAroundPullView *view){
    NSLog(@"--");
    [view performSelector:@selector(finishedLoading) withObject:nil afterDelay:1.0f];
  }];
  [self.scrollView addSubview:leftPullView];
  //[leftPullView release];

  // right
  AllAroundPullView *rightPullView = [[AllAroundPullView alloc] initWithScrollView:self.scrollView position:AllAroundPullViewPositionRight action:^(AllAroundPullView *view){
    NSLog(@"--");
    [view performSelector:@selector(finishedLoading) withObject:nil afterDelay:1.0f];
  }];
  [self.scrollView addSubview:rightPullView];
  //[rightPullView release];
  
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
