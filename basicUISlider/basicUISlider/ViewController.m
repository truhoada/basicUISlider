//
//  ViewController.m
//  basicUISlider
//
//  Created by admin on 7/14/15.
//  Copyright (c) 2015 iOS31. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer * _timer;
    __weak IBOutlet UISlider *slider;
}

@end

@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];

    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                              target:self
                                            selector:@selector(sliderUp)
                                            userInfo:nil
                                             repeats:YES];
}

- (void)sliderUp {
    slider.value += 0.01;
    if (slider.value == 1) {
        [_timer invalidate];
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                  target:self
                                                selector:@selector(sliderDown)
                                                userInfo:nil
                                                 repeats:YES];
    }
}

- (void)sliderDown {
    slider.value -= 0.01;
    if (slider.value == 0) {
        [_timer invalidate];
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                  target:self
                                                selector:@selector(sliderUp)
                                                userInfo:nil
                                                 repeats:YES];
    }
}

- (IBAction)sliderChangeValue:(UISlider *)sender {

    
}


@end










