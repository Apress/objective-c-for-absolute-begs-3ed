//
//  BookDetailsViewController.m
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import "BookDetailsViewController.h"

@implementation BookDetailsViewController

//
// We are using static cells which means they are already defined in our storyboard.
//
// In the MainViewController we had an example of dynamic cells where the class
// defined the cells in code. Normally, this is how a UITableView class would do it's work.
//
// However since in our litte app, we kow we have three items for a book. Plus, the last cell
// is a lot larger than the others and more complicated since it has a UITextView. While all
// of this can also be done in code (anything can be done in code) for simplicity's sake, we
// keeping the rows static.
//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    NSInteger row = indexPath.row;
    //
    // There are three rows. They are numbered as 0 to 2, not 1 - 3.
    //
    if (row == 0) {
        cell.textLabel.text = @"Title";
        cell.detailTextLabel.text = self.book.title;
    } else if (row == 1) {
        cell.textLabel.text = @"Author";
        cell.detailTextLabel.text = self.book.author;
    } else if (row == 2) {
        cell.textLabel.text = @"Synopsis";
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = self.book.info;
    }
    
    return cell;
}


@end
