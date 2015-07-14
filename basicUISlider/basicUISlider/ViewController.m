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

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.05
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:YES];
    
//    slider.transform = CGAffineTransformMakeRotation(M_PI_2);
}


- (void)onTimer {
    slider.value += 0.01;
    if (slider.value == 1) {
        slider.value = 0;
    }
    slider.tintColor =[UIColor redColor];
    slider.thumbTintColor = [UIColor brownColor];
//    slider.minimumValueImage = [UIImage imageNamed:@"icon111"];
//    slider.minimumTrackTintColor = [UIColor whiteColor];
//    slider.maximumTrackTintColor = [UIColor greenColor];
    
    
    
    
}


@end
