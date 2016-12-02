//
//  AppDelegate.m
//  Comparison
//
//  Created by Thornuko on 4/18/16.
//  Copyright © 2016 Innovativeware. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //NSLog(@"Hello World");
    
    //NSLog(@"The result is %@", (6>5 ? @"True" : @"False"));
    
    int i=5;
    int y=6;
    NSLog(@"The result is %@", (y>i ? @"True" : @"False"));

    int discountPercent;
    BOOL clubMember;
    
    clubMember=FALSE;
    discountPercent=0;
    if(clubMember) {
        discountPercent=15;
    }
    
    char *myCString;
    NSString *myNsstring;
    
    myCString = "testing a string";
    myNsstring = [NSString stringWithUTF8String: myCString];

    NSString *enteredPassword, *myPassword;
    
    myPassword=@"duck";
    enteredPassword=@"Duck";
    bool continueLogin=NO;
    
    if([enteredPassword isEqualToString:myPassword]) {
        continueLogin=YES;
    }
    
    
    //NSString *enteredPassword;
    //NSString *myPassword;
    myPassword=@"duck";
    enteredPassword=@"Duck";
    continueLogin=NO;
    
    if([enteredPassword length] > 5) {
        continueLogin=YES;
    }
    
    NSString *searchTitle, *bookTitle;
    searchTitle=@"Sea";
    bookTitle=@"2000 Leagues Under the Sea";
    
    if([bookTitle rangeOfString:searchTitle].location !=NSNotFound) {
        //addToResults();
    }

    
    NSDate *today = [NSDate date];
    
    //Sale Date as of 10/15/2016
    NSString * saleDateString = @"2016-10-15";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *saleDate = [dateFormatter dateFromString:saleDateString];
    
    NSComparisonResult result;
    bool saleStarted;
    
    result=[today compare:saleDate];
    
    if(result==NSOrderedAscending) {
        //Sale Date is in the future
        saleStarted=NO;
    } else if(result==NSOrderedDescending) {
        //Sale Date is in the past
        saleStarted=YES;
    } else {
        //Sale Date and Today are the same
        saleStarted=YES;
    }

    float totalSpent;
    int discountThreshhold;
    //int discountPercent;
    clubMember = TRUE;
    
    discountThreshhold=30;
    discountPercent=0;
    totalSpent=calculateTotalSpent();
    
    if(totalSpent > discountThreshhold && clubMember) {
        discountPercent=15;
    }



    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
