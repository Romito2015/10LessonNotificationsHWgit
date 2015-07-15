//
//  RSGovernment.h
//  10LessonNotificationsHW
//
//  Created by Roman Chopovenko on 07.07.15.
//  Copyright (c) 2015 Roman Chopovenko. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const RSGovernmentTaxLevelDidChangeNotification;
extern NSString *const RSGovernmentSalaryDidChangeNotification;
extern NSString *const RSGovernmentPensionDidChangeNotification;
extern NSString *const RSGovernmentAveragePriceDidChangeNotification;

extern NSString *const RSGovernmentTaxLevelUserInfoKey;
extern NSString *const RSGovernmentSalaryUserInfoKey;
extern NSString *const RSGovernmentPensionUserInfoKey;
extern NSString *const RSGovernmentAveragePriceUserInfoKey;


@interface RSGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;


@end