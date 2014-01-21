//
//  BBButton.m
//  
//
//  Created by MintBerry on 21.01.14.
//  Copyright (c) 2014 Pavel Kozlov. All rights reserved.
//

#import "BBButton.h"

@implementation BBButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void) initWithSelectedStateImageName:(NSString *)ssIN andNonSelectedStateImageName:(NSString *)nssIN{
    
    _nonSelectedStateImageName = nssIN;
    _selectedStateImageName = ssIN;
}
-(void) drawRect:(CGRect)rect{
    [super drawRect:rect];
    _imageForStates = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    [self addSubview:_imageForStates];
    [self setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [self addTarget:self action:@selector(changeState) forControlEvents:UIControlEventTouchUpInside];
    _isSelected = NO;
    [self changeState];

}
-(void) setStateImageSize:(CGSize) size {
    CGRect frame;
    frame = _imageForStates.frame;
    frame.size = size;
    _imageForStates.frame = frame;
   
}
-(void) setStateImagePosition:(CGPoint) point{
    CGRect frame;
    frame = _imageForStates.frame;
    frame.origin = point;
    _imageForStates.frame = frame;
}

-(void) setStateImageFrame:(CGRect)rect
{
    [self setStateImageSize:rect.size];
    [self setStateImagePosition:rect.origin];
}
-(void) changeState
{
    _isSelected = !_isSelected;
    if (_isSelected) {
           _imageForStates.image = [UIImage imageNamed:_nonSelectedStateImageName];
    }else
    {
           _imageForStates.image = [UIImage imageNamed:_selectedStateImageName];
    }
}

@end
