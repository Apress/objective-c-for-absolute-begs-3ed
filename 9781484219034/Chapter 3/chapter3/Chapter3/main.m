//
//  main.m
//  Chapter3
//
//  Created by Gary Bennett on 7/16/16.
//  Copyright © 2016 xcelMe. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int firstNumber = 2;
        int secondNumber = 3;
        int totalSum = 0;
        firstNumber = firstNumber + 1;
        secondNumber = secondNumber + 1;
        totalSum = firstNumber + secondNumber;
        NSLog(@"The sum is: %d",totalSum);
    }
    return 0;
}
