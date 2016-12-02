//
//  Book+CoreDataProperties.h
//  BookStore
//
//  Created by Brad Lees on 7/18/16.
//  Copyright © 2016 Inno. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSDecimalNumber *price;
@property (nullable, nonatomic, retain) NSNumber *yearPublished;
@property (nullable, nonatomic, retain) Author *author;

@end

NS_ASSUME_NONNULL_END
