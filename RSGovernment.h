//
//  RSGovernment.h
//  10LessonNotificationsHW
//
//  Created by Roman Chopovenko on 07.07.15.
//  Copyright (c) 2015 Roman Chopovenko. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const RSGovernmentTaxLevelDidChangedNotification;
extern NSString *const RSGovernmentSalaryDidChangedNotification;
extern NSString *const RSGovernmentPensionDidChangedNotification;
extern NSString *const RSGovernmentAveragePriceDidChangedNotification;

extern NSString *const RSGovernmentTaxLevelUserInfo;
extern NSString *const RSGovernmentSalaryUserInfo;
extern NSString *const RSGovernmentPensionUserInfo;
extern NSString *const RSGovernmentAveragePriceUserInfo;


@interface RSGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;


@end