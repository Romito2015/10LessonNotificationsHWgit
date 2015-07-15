//
//  RSGovernment.m
//  10LessonNotificationsHW
//
//  Created by Roman Chopovenko on 07.07.15.
//  Copyright (c) 2015 Roman Chopovenko. All rights reserved.
//

#import "RSGovernment.h"

NSString *const RSGovernmentTaxLevelDidChangeNotification = @"RSGovernmentTaxLevelDidChangeNotification";
NSString *const RSGovernmentSalaryDidChangeNotification = @"RSGovernmentSalaryDidChangedNotification";
NSString *const RSGovernmentPensionDidChangeNotification = @"RSGovernmentPensionDidChangedNotification";
NSString *const RSGovernmentAveragePriceDidChangeNotification = @"RSGovernmentAveragePriceDidChangedNotification";

NSString *const RSGovernmentTaxLevelUserInfoKey = @"RSGovernmentTaxLevelUserInfo";
NSString *const RSGovernmentSalaryUserInfoKey = @"RSGovernmentSalaryUserInfo";
NSString *const RSGovernmentPensionUserInfoKey = @"RSGovernmentPensionUserInfo";
NSString *const RSGovernmentAveragePriceUserInfoKey = @"RSGovernmentAveragePriceUserInfo";

@implementation RSGovernment


- (id) init {
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 10.f;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:RSGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RSGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:RSGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RSGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:RSGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RSGovernmentPensionUserInfoKey
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:RSGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RSGovernmentAveragePriceUserInfoKey
                                                        object:nil
                                                      userInfo:dictionary];
}

@end
