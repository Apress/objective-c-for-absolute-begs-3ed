//
//  ViewController.h
//  BookStore
//
//  Created by Brad Lees on 7/18/16.
//  Copyright © 2016 Inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSManagedObjectContext *managedObjectContext;
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

