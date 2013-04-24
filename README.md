# RRULE-to-EKRecurrenceRule

RRULE-to-EKRecurrenceRule is the easiest way to transform a RRULE string representation ([RFC 2445](http://www.ietf.org/rfc/rfc2445.txt)) into an [EKRecurrenceRule](http://developer.apple.com/library/ios/#documentation/EventKit/Reference/EKRecurrenceRuleClassRef/Reference/Reference.html). **'EKRecurrenceRule+RRULE'** is an Objective-C category which adds a new initializer to the EKRecurrenceRule class. EKRecurrenceRule is available in iOS 4.0 and later and needs the EventKit framework.

## Getting Started

- Download RRULE-to-EKRecurrenceRule and play with the included Xcode project.
- Copy **'EKRecurrenceRule+RRULE.h'** and **'EKRecurrenceRule+RRULE.m'** into your own Xcode project.
- Add `#import "EKRecurrenceRule+RRULE.h"` to all files you would like to use RRULE-to-EKRecurrenceRule.   

## Example

``` objective-c
#import "EKRecurrenceRule+RRULE.h"

- (void)testMethod
{
    // Test
    NSString *rfc2445String = @"FREQ=MONTHLY;BYDAY=MO,TU,WE,TH,FR;BYSETPOS=-2"; // The 2nd to last weekday of the month

    // Result
    EKRecurrenceRule *recurrenceRule = [[EKRecurrenceRule alloc] initWithString:rfc2445String];
    NSLog(@"%@", recurrenceRule);
}
```

### Notes

- EKRecurrenceRule does add WKST=SU automatically
- EKRecurrenceRule does only support DAILY, WEEKLY, MONTHLY, YEARLY frequencies

### ARC

RRULE-to-EKRecurrenceRule uses ARC.

If you are including the RRULE-to-EKRecurrenceRule sources directly into a project that does not yet use [Automatic Reference Counting](http://clang.llvm.org/docs/AutomaticReferenceCounting.html), you will need to set the `-fobjc-arc` compiler flag on all of the RRULE-to-EKRecurrenceRule source files. To do this in Xcode, go to your active target and select the "Build Phases" tab. Now select all RRULE-to-EKRecurrenceRule source files, press Enter, insert `-fobjc-arc` and then "Done" to enable ARC for RRULE-to-EKRecurrenceRule.

## License

RRULE-to-EKRecurrenceRule is licensed under the terms of the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html). Please see the [LICENSE](LICENSE) file for full details.

## Credits

RRULE-to-EKRecurrenceRule is brought to you by [Jochen Schöllig](http://twitter.com/jochenschoellig) and the [Codeatelier](http://twitter.com/codeatelier) team.