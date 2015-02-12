//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *returnString = @"";
    
    // Find which number is lower / which is higher
    // save lower one in new variable called lowerNumber
    // save higher one in new variable called higherNumber

    NSInteger lowerNumber;
    NSInteger higherNumber;
    
    if (number < otherNumber) {
        lowerNumber = number;
        higherNumber = otherNumber;
    } else {
        higherNumber = number;
        lowerNumber = otherNumber;
    }
    
    NSLog(@" %ld - %ld ", (long) lowerNumber, (long) higherNumber);
    
    
    // loop from lower number to higher number (using for (;;) loop)
    for (NSInteger thisNumber = lowerNumber; thisNumber <= higherNumber; ) {
        // each time through the loop
        // add the current number to the end of the string
         returnString = [returnString stringByAppendingFormat:@"%ld", (long)thisNumber];
        
        thisNumber = thisNumber + 1;
    }
    
    // return the combined string
    return returnString;
}

    
@end
