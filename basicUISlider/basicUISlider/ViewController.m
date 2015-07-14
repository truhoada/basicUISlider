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
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.05
                                                  target:self
                                                selector:@selector(onTimer)
                                                userInfo:nil
                                                 repeats:YES];


//   slider.transform = CGAffineTransformMakeRotation(M_PI);
}


- (void)onTimer {
    for (int i=1; i<3; i++) {
    slider.value += 0.01;
    if (slider.value == 1 && (i==1 || i==2)) {
        slider.transform = CGAffineTransformMakeRotation(M_PI*i);
        slider.value = 0;
//        [_timer invalidate];
    }}
    slider.tintColor =[UIColor redColor];
    slider.thumbTintColor = [UIColor brownColor];
//    slider.minimumValueImage = [UIImage imageNamed:@"icon111"];
//    slider.minimumTrackTintColor = [UIColor whiteColor];
//    slider.maximumTrackTintColor = [UIColor greenColor];
    
    
    
    
}


@end
