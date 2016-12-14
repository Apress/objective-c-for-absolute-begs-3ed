//
//  SimpleLabelData.h
//  MyFirstApp
//
//  Created by M. R. Fisher on 8/17/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleLabelData : NSObject


@property (nonatomic) NSString *title;
@property (nonatomic) NSString *value;


+ (instancetype)simpleLabelDataWithTitle:(NSString *)title
                                andValue:(NSString *)value;


- (NSString *)combinedString;

@end