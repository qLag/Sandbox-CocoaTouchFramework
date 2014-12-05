//
//  MyTextField.m
//  CarthageTest
//
//  Created by Quentin Lagarde on 05/12/2014.
//  Copyright (c) 2014 Sopra. All rights reserved.
//

#import "MyTextField.h"

@implementation MyTextField

-(instancetype)init {
    self = [super init];
    if(self) {
        [self initialize];
    }
    return self;
}


-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self initialize];
    }
    return self;
}


-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self initialize];
    }
    return self;
}

-(void) initialize {
    self.backgroundColor = self.bgColor;
    UITextField *innerTextField = [[UITextField alloc] init];
    [self addSubview:innerTextField];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:innerTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-10];
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:innerTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:10];
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:innerTextField attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:10];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:innerTextField attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:-10];
    
    innerTextField.backgroundColor = self.tfBgColor;
    innerTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self addConstraints:@[rightConstraint, leftConstraint, topConstraint, bottomConstraint]];
    
}
@end
