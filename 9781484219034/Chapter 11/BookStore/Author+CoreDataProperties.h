//
//  Author+CoreDataProperties.h
//  BookStore
//
//  Created by Brad Lees on 7/18/16.
//  Copyright © 2016 Inno. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Author.h"

NS_ASSUME_NONNULL_BEGIN

@interface Author (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *firstName;
@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSManagedObject *books;

@end

NS_ASSUME_NONNULL_END
