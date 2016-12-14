//
//  Bookstore.h
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Bookstore : NSObject

@property (nonatomic, strong) NSMutableArray<Book *> *books;

- (NSInteger)numberOfBooks;

@end
