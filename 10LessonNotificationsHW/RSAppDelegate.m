//
//  RSAppDelegate.m
//  10LessonNotificationsHW
//
//  Created by Roman Chopovenko on 07.07.15.
//  Copyright (c) 2015 Roman Chopovenko. All rights reserved.
//

#import "RSAppDelegate.h"
#import "RSGovernment.h"
#import "RSDoctor.h"

@interface RSAppDelegate()

@property (strong, nonatomic) RSGovernment *government;

@end


@implementation RSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(governmentNotification:)
                                                 name:RSGovernmentTaxLevelDidChangeNotification
                                               object:nil];
    
    self.government = [[RSGovernment alloc] init];
    
    RSDoctor *doctor1 = [[RSDoctor alloc] init];
    RSDoctor *doctor2 = [[RSDoctor alloc] init];
    RSDoctor *doctor3 = [[RSDoctor alloc] init];
    RSDoctor *doctor4 = [[RSDoctor alloc] init];
    RSDoctor *doctor5 = [[RSDoctor alloc] init];
    
    doctor1.salary = doctor2.salary = doctor3.salary = doctor4.salary = doctor5.salary = self.government.salary;
    
    self.government.taxLevel = 5.5;
    self.government.salary = 1100;
    self.government.averagePrice = 15;
    self.government.pension = 550;
    
    
    
    self.government.salary = 1200;
    
    self.government.salary = 900;
    
    self.government.salary = 1550;

    
    
    
    
    return YES;
}

// перед тем как реализовывать метод governmentNotification и установкой его в качестве селектора нужно удалить себя (self)  как Observer'a!!!!!!!!!!
- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) governmentNotification:(NSNotification *) notification {
    
    // NSLog(@"governmentNotification userInfo %@",notification.userInfo);
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
