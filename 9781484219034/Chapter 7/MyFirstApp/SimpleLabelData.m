//
//  SimpleLabelData.m
//  MyFirstApp
//
//  Created by M. R. Fisher on 8/17/16.
//  Copyright © 2016 MyCompany. All rights reserved.
//

#import "SimpleLabelData.h"

@implementation SimpleLabelData

+ (instancetype)simpleLabelDataWithTitle:(NSString *)initialTitle
                                andValue:(NSString *)initialValue
{
    SimpleLabelData *newLabel = [self new];
    newLabel.title = initialTitle;
    newLabel.value = initialValue;
    
    return newLabel;
}


- (NSString *)combinedString
{
    NSMutableString *newString = [NSMutableString new];
    [newString appendString:self.title];
    [newString appendString:@": "];
    [newString appendString:self.value];
    
    return [NSString stringWithString:newString];
}

@end
