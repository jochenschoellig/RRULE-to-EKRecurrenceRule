//
//  CAViewController.m
//  RRULE
//
//  Created by Jochen Schöllig on 24.04.13.
//  Copyright (c) 2013 Jochen Schöllig. All rights reserved.
//

#import "CAViewController.h"
#import <EventKit/EventKit.h>

#import "EKRecurrenceRule+RRULE.h"

@interface CAViewController ()

@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    ////////////////////
    // Tests
    ////////////////////
    
    NSString *rfc2445String = [NSString string];
    
    // Daily for 10 occurrences:
    // rfc2445String = @"FREQ=DAILY;COUNT=10";
    
    // Daily until December 24, 1997
    // rfc2445String = @"FREQ=DAILY;UNTIL=19971224T000000Z";
    
    // Every other day - forever:
    // rfc2445String = @"FREQ=DAILY;INTERVAL=2";
    
    // Every 10 days, 5 occurrences:
    // rfc2445String = @"FREQ=DAILY;INTERVAL=10;COUNT=5";
    
    // Everyday in January, for 3 years:
    // rfc2445String = @"FREQ=YEARLY;UNTIL=20000131T090000Z;BYMONTH=1;BYDAY=SU,MO,TU,WE,TH,FR,SA";
    // rfc2445String = @"FREQ=DAILY;UNTIL=20000131T090000Z;BYMONTH=1";
    
    // Weekly for 10 occurrences:
    // rfc2445String = @"FREQ=WEEKLY;COUNT=10";
    
    // Weekly until December 24, 1997:
    // rfc2445String = @"FREQ=WEEKLY;UNTIL=19971224T000000Z";
    
    // Every other week - forever:
    // rfc2445String = @"FREQ=WEEKLY;INTERVAL=2;WKST=SU";
    
    // Weekly on Tuesday and Thursday for 5 weeks:
    // rfc2445String = @"FREQ=WEEKLY;UNTIL=19971007T000000Z;WKST=SU;BYDAY=TU,TH";
    // rfc2445String = @"FREQ=WEEKLY;COUNT=10;WKST=SU;BYDAY=TU,TH";
    
    // Every other week on Monday, Wednesday and Friday until December 24, 1997:
    // rfc2445String = @"FREQ=WEEKLY;INTERVAL=2;UNTIL=19971224T000000Z;WKST=SU;BYDAY=MO,WE,FR";
    
    // Monthly on the 1st Friday for ten occurrences:
    // rfc2445String = @"FREQ=MONTHLY;COUNT=10;BYDAY=1FR";
    
    // Monthly on the 1st Friday until December 24, 1997:
    // rfc2445String = @"FREQ=MONTHLY;UNTIL=19971224T000000Z;BYDAY=1FR";
    
    // Every other month on the 1st and last Sunday of the month for 10 occurrences:
    // rfc2445String = @"FREQ=MONTHLY;INTERVAL=2;COUNT=10;BYDAY=1SU,-1SU";
    
    // Monthly on the second to last Monday of the month for 6 months:
    // rfc2445String = @"FREQ=MONTHLY;COUNT=6;BYDAY=-2MO";
    
    // Monthly on the third to the last day of the month, forever:
    // rfc2445String = @"FREQ=MONTHLY;BYMONTHDAY=-3";
    
    // Monthly on the 2nd and 15th of the month for 10 occurrences:
    // rfc2445String = @"FREQ=MONTHLY;COUNT=10;BYMONTHDAY=2,15";
    
    // Monthly on the first and last day of the month for 10 occurrences:
    // rfc2445String = @"FREQ=MONTHLY;COUNT=10;BYMONTHDAY=1,-1";
    
    // Every 18 months on the 10th thru 15th of the month for 10 occurrences:
    // rfc2445String = @"FREQ=MONTHLY;INTERVAL=18;COUNT=10;BYMONTHDAY=10,11,12,13,14,15";
    
    // Every Tuesday, every other month:
    // rfc2445String = @"FREQ=MONTHLY;INTERVAL=2;BYDAY=TU";
    
    // Yearly in June and July for 10 occurrences:
    // rfc2445String = @"FREQ=YEARLY;COUNT=10;BYMONTH=6,7";
    
    // Every other year on January, February, and March for 10 occurrences:
    // rfc2445String = @"FREQ=YEARLY;INTERVAL=2;COUNT=10;BYMONTH=1,2,3";
    
    // Every 3rd year on the 1st, 100th and 200th day for 10 occurrences:
    // rfc2445String = @"FREQ=YEARLY;INTERVAL=3;COUNT=10;BYYEARDAY=1,100,200";
    
    // Every 20th Monday of the year, forever:
    // rfc2445String = @"FREQ=YEARLY;BYDAY=20MO";
    
    // Monday of week number 20 (where the default start of the week is Monday), forever:
    // rfc2445String = @"FREQ=YEARLY;BYWEEKNO=20;BYDAY=MO";
    
    // Every Thursday in March, forever:
    // rfc2445String = @"FREQ=YEARLY;BYMONTH=3;BYDAY=TH";
    
    // Every Thursday, but only during June, July, and August, forever:
    // rfc2445String = @"FREQ=YEARLY;BYDAY=TH;BYMONTH=6,7,8";
    
    // Every Friday the 13th, forever:
    // rfc2445String = @"FREQ=MONTHLY;BYDAY=FR;BYMONTHDAY=13";
    
    // The first Saturday that follows the first Sunday of the month, forever:
    // rfc2445String = @"FREQ=MONTHLY;BYDAY=SA;BYMONTHDAY=7,8,9,10,11,12,13";
    
    // Every four years, the first Tuesday after a Monday in November, forever (U.S. Presidential Election day):
    // rfc2445String = @"FREQ=YEARLY;INTERVAL=4;BYMONTH=11;BYDAY=TU;BYMONTHDAY=2,3,4,5,6,7,8";
    
    // The 3rd instance into the month of one of Tuesday, Wednesday or Thursday, for the next 3 months:
    // rfc2445String = @"FREQ=MONTHLY;COUNT=3;BYDAY=TU,WE,TH;BYSETPOS=3";
    
    // The 2nd to last weekday of the month:
    rfc2445String = @"FREQ=MONTHLY;BYDAY=MO,TU,WE,TH,FR;BYSETPOS=-2";
    
    
    ////////////////////
    // Result
    ////////////////////
    
    EKRecurrenceRule *recurrenceRule = [[EKRecurrenceRule alloc] initWithString:rfc2445String];
    NSLog(@"%@", recurrenceRule);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
