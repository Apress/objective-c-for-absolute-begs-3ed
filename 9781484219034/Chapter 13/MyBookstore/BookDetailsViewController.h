//
//  BookDetailsViewController.h
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface BookDetailsViewController : UITableViewController

@property (nonatomic, strong) Book *book;

@end
