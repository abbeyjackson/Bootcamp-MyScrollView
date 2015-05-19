//
//  ViewController.m
//  MyScrollView
//
//  Created by Abegael Jackson on 2015-05-19.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic) IBOutlet MyScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    CGRect bounds = self.view.bounds;
    bounds.origin.y += 100;
    self.view.bounds = bounds;
    self.scrollView.contentSize = CGSizeMake(1200, 1200);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
