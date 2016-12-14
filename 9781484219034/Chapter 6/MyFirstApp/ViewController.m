//
//  ViewController.m
//  MyFirstApp
//
//  Created by M. R. Fisher on 7/1/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)showName:(id)sender {
    [self.nameLabel setText:@"My Name is Awesome!"];
}

@end
