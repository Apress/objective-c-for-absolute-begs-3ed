//
//  BookDetailViewController.h
//  MyBookstore
//
//  Created by M. R. Fisher on 8/3/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookDetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *bookTitle;
@property (nonatomic, strong) IBOutlet UILabel *bookAuthor;
@property (nonatomic, strong) IBOutlet UILabel *bookInfo;
@end
