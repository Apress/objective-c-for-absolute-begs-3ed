//
//  DetailViewController.h
//  bookstore
//
//  Created by Thornuko on 4/9/16.
//  Copyright © 2016 Innovativeware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

