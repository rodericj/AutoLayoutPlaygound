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

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"OverlayView" owner:self options:nil];
        self = [nib objectAtIndex:0];
        [[self mainLabel] setText:@"Hey this is some really long text it should loop around"];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
