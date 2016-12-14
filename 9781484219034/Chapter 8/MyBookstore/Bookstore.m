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
        
        //
        // Add book requires an array of dictionaries. Each element of the array
        // contains a dictionary that describes a book.
        //
        NSArray *arrayOfBooks = @[  // This starts the array
                                  
                                  //
                                  // This is the first book as a dictionary.
                                  // It's the first element in the array
                                  //
                                  @{@"title": @"Objective-C for Absolute Beginners",
                                    @"author": @"Bennett, Fisher and Lees",
                                    @"description": @"iOS Programming made easy."},
                                  
                                  //
                                  // Now we're creating the second dictionary as
                                  // the second element of the array.
                                  //
                                  @{@"title": @"A Farewell To Arms",
                                    @"author": @"Ernest Hemingway",
                                    @"description": @"The story of an affair between"
                                                     " an English nurse and an"
                                                     " American soldier on the Italian"
                                                     " front during World War I."}
                                  
                                  ]; // End of the array
        
        [self addBooks:arrayOfBooks];
    }
    
    return self;
}

- (NSInteger)numberOfBooks
{
    return self.books.count;
}

- (void)addBooks:(NSArray *)bookArray
{
    for (NSDictionary *bookInfo in bookArray) {
        Book *newBook;
        
        // Create a new book object.
        newBook = [Book new];
        newBook.title = bookInfo[@"title"];
        newBook.author = bookInfo[@"author"];
        newBook.info = bookInfo[@"description"];
    
        [self.books addObject:newBook];
    }
}
@end

