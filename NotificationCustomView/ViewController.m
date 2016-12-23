//
//  ViewController.m
//  NotificationCustomView
//
//  Created by Fredrick Ohen on 10/7/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //Creates red background
    notificationView =[[NotificationView alloc]initWithFrame:CGRectMake(0, -self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    notificationView.backgroundColor = [UIColor redColor];
    
   [self.view addSubview:notificationView];
    
    //Creating the swipe up gesture
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;

    [self.view addGestureRecognizer:swipeUp];

    
    //Create the swipe down gesture
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown:)];
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipeDown];
}



-(void) swipeUp:(UISwipeGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:1.0 animations:^{
        
        notificationView.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
        
        // CGPointMake(self.view.center.x, self.view.frame.size.height);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
