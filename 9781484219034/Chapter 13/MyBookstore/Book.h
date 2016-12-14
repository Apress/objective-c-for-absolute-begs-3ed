//
//  Book.h
//  MyBookstore
//
//  Created by M. R. Fisher on 6/29/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *author;
@property(nonatomic,strong) NSString *info;

@end
