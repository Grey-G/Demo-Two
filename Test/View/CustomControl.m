//
//  CustomControl.m
//  Test
//
//  Created by shinetech-mac-05 on 2018/3/1.
//  Copyright © 2018年 shinetech-mac-05. All rights reserved.
//

#import "CustomControl.h"

@implementation CustomControl

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self = [[[NSBundle mainBundle] loadNibNamed:@"CustomControl" owner:self options:nil] lastObject];
    if (self) {
        self.frame = frame;
        [self addSubview:self.arrowImageView];
    }
    return self;
}

- (IBAction)disapper:(UIButton *)sender {
    [self removeFromSuperview];
}

-(void)getValueFromSuperViewWithLable:(NSString *)content
{
    _warn.text = content;
}

-(void)getFrameFromSuperViewWithCenter:(CGPoint)center
{
    self.arrowImageView.center = CGPointMake(center.x, self.arrowImageView.frame.size.height / 2);
}
- (UIImageView *)arrowImageView
{
    if (!_arrowImageView)
    {
        _arrowImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"arrow"]];
        _arrowImageView.frame = CGRectMake(0, 0, 30, 30);
    }
    return _arrowImageView;
}
@end
