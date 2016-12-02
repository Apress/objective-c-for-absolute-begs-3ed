//
//  DetailViewController.h
//  BookStore
//
//  Created by Brad Lees on 8/5/16.
//  Copyright © 2016 Inno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

