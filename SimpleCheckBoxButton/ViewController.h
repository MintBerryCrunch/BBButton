//
//  ViewController.h
//  SimpleCheckBoxButton
//
//  Created by MintBerry on 21.01.14.
//  Copyright (c) 2014 gga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *x;
@property (weak, nonatomic) IBOutlet UISlider *y;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UISlider *sizeH;
@property (weak, nonatomic) IBOutlet UISlider *sizeW;
- (IBAction)changeImageSize:(id)sender;

@end
