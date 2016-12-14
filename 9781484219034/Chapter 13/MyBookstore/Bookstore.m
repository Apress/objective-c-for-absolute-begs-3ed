//
//  Bookstore.m
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import "Bookstore.h"

@implementation Bookstore

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.books = [NSMutableArray new];
        [self addBooks];
    }
    
    return self;
}


- (void)addBooks
{
    Book *newBook;
    
    // Create a new book object.
    newBook = [Book new];
    newBook.title = @"Objective-C for Absolute Beginners";
    newBook.author = @"Bennett, Fisher and Lees";
    newBook.info = @"iOS Programming made easy.";
    
    [self.books addObject:newBook];
    
    // Create a new book object.  We can re-use the same variable. The current value of newBook is
    // saved in the self.books array.
    newBook = [Book new];
    newBook.title = @"A Farewell To Arms";
    newBook.author = @"Ernest Hemingway";
    newBook.info = @"The story of an affair between an English "
                    "nurse and an American soldier "
                    "on the Italian front "
                    "during World War I.";
    
    [self.books addObject:newBook];
}
@end

