//
//  MainViewController.m
//  MyBookstore
//
//  Created by M. R. Fisher on 8/2/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import "MainViewController.h"
#import "Bookstore.h"  // <-- This is our Bookstore object include file.
#import "BookDetailViewController.h"

@interface MainViewController ()
@property (nonatomic, strong) Bookstore *theBookstore;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.theBookstore = [Bookstore new];
    self.title = @"My Bookstore"; // This is the title of our main view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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
    return self.theBookstore.numberOfBooks;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //
    // A UITableViewCell is a row in the UITableView. We want to display
    // a book title in each row. This method is called for every book
    // in the bookstore (see tableView:numberOfRowsInSection:). That method
    // returns the number of rows that the UITableView should show - this
    // is the number of books in the Bookstore object.
    //
    // We start by getting the cell from our Main.storyboard file. This is
    // the UITableViewCell "Identifier" found in the Storyboard.
    UITableViewCell *cell =
         [tableView dequeueReusableCellWithIdentifier:@"BookTitleRow"];
    
    //
    // Get the book in the Bookstore. The indexPath.row is set to the row
    // we are going to display.
    Book *book = self.theBookstore.books[indexPath.row];
    
    //
    // Once we have the book, we want to show it's title in the UITableViewCell.
    // There is a titleLabel already built in to the UITableViewCell so we use
    // that. The titleLabel has a text attribute we can set to an NSString.
    cell.textLabel.text = book.title;
    
    //
    // Return the cell that has been setup for this row.
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BookDetailsSegue"]) {
        BookDetailViewController *detailViewController = segue.destinationViewController;
        [detailViewController view];
        NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
        
        Book *selectedBook = self.theBookstore.books[selectedRow.row];
        
        detailViewController.bookTitle.text = selectedBook.title;
        detailViewController.bookAuthor.text = selectedBook.author;
        detailViewController.bookInfo.text = selectedBook.info;

        detailViewController.bookAuthor.numberOfLines = 0;
    }
}

@end
