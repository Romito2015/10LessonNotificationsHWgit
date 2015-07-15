//
//  RSDoctor.m
//  10LessonNotificationsHW
//
//  Created by Roman Chopovenko on 15.07.15.
//  Copyright (c) 2015 Roman Chopovenko. All rights reserved.
//
#import "RSDoctor.h"
#import "RSGovernment.h"

@implementation RSDoctor

#pragma mark - Initialization

- (id) init {
    self = [super init];
    if (self) {
        NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
        [nc addObserver:self
               selector:@selector(salaryChangedNotification:)
                   name:RSGovernmentSalaryDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceChangedNotification:)
                   name:RSGovernmentAveragePriceUserInfoKey
                 object:nil];
        
    }
    return self;
}

- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

- (void) salaryChangedNotification:(NSNotification *) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:RSGovernmentSalaryUserInfoKey];
    
    CGFloat salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    } else {
        NSLog(@"Doctors are happy");
    }
    
    self.salary = salary;
    
    
}

- (void) averagePriceChangedNotification:(NSNotification *) notification {
    
    
    
}
@end
