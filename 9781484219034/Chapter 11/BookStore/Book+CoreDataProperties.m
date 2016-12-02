//
//  Book+CoreDataProperties.m
//  BookStore
//
//  Created by Brad Lees on 7/18/16.
//  Copyright © 2016 Inno. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Book+CoreDataProperties.h"

@implementation Book (CoreDataProperties)

@dynamic title;
@dynamic price;
@dynamic yearPublished;
@dynamic author;

@end
