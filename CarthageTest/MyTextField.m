//
//  MyTextField.m
//  CarthageTest
//
//  Created by Quentin Lagarde on 05/12/2014.
//  Copyright (c) 2014 Sopra. All rights reserved.
//

#import "MyTextField.h"

@interface MyTextField()

@property (nonatomic, strong) UITextField *textField;
@end

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
    
}


-(void)drawRect:(CGRect)rect {
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, self.frame.size.width -20 , self.frame.size.height -20 )];
    [self addSubview:self.textField];
}



-(void)layoutSubviews {
    self.backgroundColor = self.bgColor;
    self.textField.backgroundColor = self.tfBgColor;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
}
@end
