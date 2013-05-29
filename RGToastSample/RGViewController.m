//
//  RGViewController.m
//  RGToastSample
//
//  Created by Ryan Grier on 5/28/13.
//  Copyright (c) 2013 Ryan Grier. All rights reserved.
//

#import "RGViewController.h"
#import "RGToast.h"

@implementation RGViewController

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [[RGToast makeToast:@"Testing"] show];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return TRUE;
}

- (NSUInteger)supportedInterfaceOrientations {
    return (UIInterfaceOrientationMaskAll);
}

- (IBAction)showShortToast:(id)sender {
    NSLog(@"showShortToast");
    [[RGToast makeToast:@"Short Toast!" duration:RGToastViewDurationShort] show];
}

- (IBAction)showLongToast:(id)sender {
    NSLog(@"showLongToast");
    [[RGToast makeToast:@"Long Toast!" duration:RGToastViewDurationLong] show];
}

- (IBAction)showManyShortToasts:(id)sender {
    NSLog(@"showManyShortToasts");
    [[RGToast makeToast:@"Short Toast 1" duration:RGToastViewDurationShort] show];
    [[RGToast makeToast:@"Short Toast 2" duration:RGToastViewDurationShort] show];
    [[RGToast makeToast:@"Short Toast 3" duration:RGToastViewDurationShort] show];
    [[RGToast makeToast:@"Short Toast 4" duration:RGToastViewDurationShort] show];
    [[RGToast makeToast:@"Short Toast 5" duration:RGToastViewDurationShort] show];
}

- (IBAction)showManyLongToasts:(id)sender {
    NSLog(@"showManyLongToasts");
    [[RGToast makeToast:@"Long Toast 1" duration:RGToastViewDurationLong] show];
    [[RGToast makeToast:@"Long Toast 2" duration:RGToastViewDurationLong] show];
    [[RGToast makeToast:@"Long Toast 3" duration:RGToastViewDurationLong] show];
    [[RGToast makeToast:@"Long Toast 4" duration:RGToastViewDurationLong] show];
    [[RGToast makeToast:@"Long Toast 5" duration:RGToastViewDurationLong] show];
}

@end
