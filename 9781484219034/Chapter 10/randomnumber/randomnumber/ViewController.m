//
//  ViewController.m
//  RandomNumber
//
//  Created by Gary Bennett on 6/22/16.
//  Copyright © 2016 xcelMe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *randomNumberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generate:(UIButton *)sender {
    int randomNumber;
    randomNumber = (arc4random() % 101) + 1;
    [_randomNumberLabel setText:[NSString stringWithFormat:@"%i",randomNumber]];
}




@end
