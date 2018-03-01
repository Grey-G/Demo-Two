//
//  CustomControl.h
//  Test
//
//  Created by shinetech-mac-05 on 2018/3/1.
//  Copyright © 2018年 shinetech-mac-05. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EdgeInsetsLabel.h"

@interface CustomControl : UIView


@property (weak, nonatomic) IBOutlet UILabel *warn;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (nonatomic,strong) UIImageView *arrowImageView;

/*/insert value/*/
-(void)getValueFromSuperViewWithLable:(NSString *)content;

/*/set arrow's frame/*/
-(void)getFrameFromSuperViewWithCenter:(CGPoint )center;

@end
