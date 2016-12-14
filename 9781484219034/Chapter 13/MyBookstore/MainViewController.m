//
//  MainViewController.m
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import "MainViewController.h"
#import "BookDetailsViewController.h"

@implementation MainViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.bookstore = [Bookstore new];
        self.title = @"My Bookstore";
    }
    
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BookDetailSegue"]) {
        BookDetailsViewController *bookDetailsVC = segue.destinationViewController;
        NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
        
        Book *selectedBook = self.bookstore.books[selectedRow.row];
        bookDetailsVC.book = selectedBook;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //
    // A section is a grouping of rows in the UITableView.
    // We are only using one section, which is the list of book titles.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //
    // We want to return the number of books we have in the bookstore.
    // We don't care about the section since there is only one! (see numberOfSectionsInTableView)
    //
    return self.bookstore.books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //
    // A UITableViewCell is a row in the UITableView. We want to display a book title in each row.
    // This method is called for every book in the bookstore (see tableView:numberOfRowsInSection:). That method
    // returns the number of rows that the UITableView should show - this is the number of books in the Bookstore object.
    //
    // We start by getting the cell from our Main.storyboard file. This is the UITableViewCell "identifier"
    // found in the Storyboard.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookTitleRow"];
    
    //
    // Get the book in the Bookstore. The indexPath.row is set to the row we are going to display.
    Book *book = self.bookstore.books[indexPath.row];
    
    //
    // Once we have the book, we want to show it's title in the UITableViewCell. There is a titleLabel already
    // built in to the UITableViewCell so we use that. The titleLabel has a text attribute we can set to an NSString.
    cell.textLabel.text = book.title;

    //
    // Return the cell that has been setup for this row.
    return cell;
}

@end
