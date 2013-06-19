//
//  RCViewController.m
//  RCAutoLayoutPlayground
//
//  Created by Roderic on 6/18/13.
//  Copyright (c) 2013 Roderic Campbell. All rights reserved.
//

#import "RCViewController.h"
#import "RCOverlayView.h"

@interface RCViewController ()

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    RCOverlayView *view = [[RCOverlayView alloc] init];
    [[self view] addSubview:view];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
