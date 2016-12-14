//
//  ViewController.h
//  MyFirstApp
//
//  Created by M. R. Fisher on 7/1/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) IBOutlet UILabel *firstLabel;
@property (nonatomic) IBOutlet UILabel *secondLabel;
@property (nonatomic) IBOutlet UILabel *thirdLabel;

- (IBAction)showName:(id)sender;

@end

