//
//  RCOverlayView.m
//  RCAutoLayoutPlayground
//
//  Created by Roderic on 6/18/13.
//  Copyright (c) 2013 Roderic Campbell. All rights reserved.
//

#import "RCOverlayView.h"
@interface RCOverlayView ()
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

@end

@implementation RCOverlayView

- (void) awakeFromNib {
    [self.label setText:@"Hey this is some really long text"];
}

@end
