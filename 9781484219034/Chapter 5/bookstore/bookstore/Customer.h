//
//  Customer.h
//  bookstore
//
//  Created by Thornuko on 4/9/16.
//  Copyright © 2016 Innovativeware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Customer : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSString *addressLine1;
    NSString *addressLine2;
    NSString *city;
    NSString *state;
    NSString *zip;
    NSString *phoneNumber;
    NSString *emailAddress;
    NSString *favoriteGenre;
}

-(NSArray *) listPurchaseHistory;

@end
