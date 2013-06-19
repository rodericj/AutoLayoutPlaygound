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
    
    RCOverlayView *overlayView = [[UINib nibWithNibName:@"OverlayView" bundle:nil] instantiateWithOwner:self options:nil][0];
    overlayView.translatesAutoresizingMaskIntoConstraints = NO;
    [[self view] addSubview:overlayView];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:overlayView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:overlayView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:overlayView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:8]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:overlayView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationLessThanOrEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:8]];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
