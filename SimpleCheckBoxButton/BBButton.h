//
//  BBButton.h
//  
//
//  Created by MintBerry on 21.01.14.
//  Copyright (c) 2014 Pavel Kozlov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BBButton : UIButton

@property (nonatomic, strong) UIImageView *imageForStates;
@property (nonatomic, assign) BOOL isSelected;
@property (nonatomic, strong) NSString *nonSelectedStateImageName;
@property (nonatomic, strong) NSString *selectedStateImageName;

-(void) initWithSelectedStateImageName:(NSString *)ssIN andNonSelectedStateImageName:(NSString *)nssIN;
-(void) changeState;
-(void) setStateImageSize:(CGSize) size;
-(void) setStateImagePosition:(CGPoint) point;
-(void) setStateImageFrame:(CGRect) rect;

@end
