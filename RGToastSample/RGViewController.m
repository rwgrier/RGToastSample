//
//  RGViewController.m
//  RGToastSample
//
// Copyright (c) 2013 Ryan Grier (http://www.ryangrier.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "RGViewController.h"
#import "RGToast.h"

@implementation RGViewController

- (void)viewDidAppear:(BOOL)animated {
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
    [[RGToast makeToast:@"Short Toast!"] show];
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
