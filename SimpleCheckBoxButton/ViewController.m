//
//  ViewController.m
//  SimpleCheckBoxButton
//
//  Created by MintBerry on 21.01.14.
//  Copyright (c) 2014 gga. All rights reserved.
//

#import "ViewController.h"
#import "BBButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet BBButton *button;

@end
@implementation ViewController
@synthesize button;
@synthesize sizeH,sizeW;
@synthesize status, x, y;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [button initWithSelectedStateImageName:@"checked_checkbox.png" andNonSelectedStateImageName:@"unchecked_checkbox.png"];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeImageSize:(id)sender {
    CGSize size;
    size.height = [sizeH value];
    size.width = [sizeW value];
    [button setStateImageSize:size];
    if (button.isSelected) {
        status.text = @"NotSelected";
    }else
        status.text = @"Selected";
    
    CGPoint point;
    point.x = [x value];
    point.y = [y value];
    [button setStateImagePosition:point];
}
@end
