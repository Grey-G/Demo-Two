//
//  ViewController.m
//  Test
//
//  Created by shinetech-mac-05 on 2018/3/1.
//  Copyright © 2018年 shinetech-mac-05. All rights reserved.
//

#import "ViewController.h"
#import "CustomControl.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *select;
@property (weak, nonatomic) IBOutlet EdgeInsetsLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.contentInset = UIEdgeInsetsMake(0, 10, 0, 10);
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)warning:(UIButton *)sender {
    CustomControl *CC = [CustomControl new];

    NSString *content = @"This is a test message!";
    [CC getValueFromSuperViewWithLable:content];
    
    CGPoint pointerCenter = CGPointMake(sender.center.x, 0);
    [CC getFrameFromSuperViewWithCenter:pointerCenter];
    
    //Setting CC's frame
    CC.frame = CGRectMake(0, sender.frame.origin.y + sender.frame.size.height, SCREEN_WIDTH, 150);
   
    [self.view addSubview:CC];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
