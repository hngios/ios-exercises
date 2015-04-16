//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    // Type (includes class and * meaning pointer to)
    //         name         [= ...];
    NSNumber* resultNSNumber = nil;
    
    double floatNumber = 2 * [number doubleValue];
    
    // [ClassOrInstance methodName:parameters]
    
    resultNSNumber = [NSNumber numberWithDouble:floatNumber];
    
    return resultNSNumber;
}


- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
 
    // start with an empty stack of result numbers
    NSArray *arrayOfNumbersBetweenNumber = @[];
    
    NSInteger lowerNumber;
    NSInteger higherNumber;
    
    // find lower and higher number and save them
    if (number < otherNumber) {
        lowerNumber = number;
        higherNumber = otherNumber;
    } else {
        higherNumber = number;
        lowerNumber = otherNumber;
    }
    
    NSLog(@" %ld - %ld ", (long) lowerNumber, (long) higherNumber);
    
    
    // set current number to the lower number, then while current number is lower than higher number:
    for (NSInteger currentNumber = lowerNumber; currentNumber <= higherNumber;) {
        NSLog(@"CurrentNumber: %ld",currentNumber);
        
        // wrap current number in an NSNumber object
        NSNumber *curNumberObject = [NSNumber numberWithInteger:currentNumber];
        
        // add the current number to the stack of results
        arrayOfNumbersBetweenNumber = [arrayOfNumbersBetweenNumber arrayByAddingObject:curNumberObject];
        
        // add 1 to the current number
        currentNumber = currentNumber + 1;
    }

    return arrayOfNumbersBetweenNumber;
    
}


// No pointers to:
// NSInteger, double, char, BOOL, CGFloat, float
- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSInteger resultNSInteger = 0;
    NSInteger lowestSoFar = 32000;
    
    // for each number in the array {
    
    for (NSNumber *currentNumber in arrayOfNumbers) {
  
    
    
            // if it's lower than the lowest so far,
        
        if ([currentNumber integerValue] < lowestSoFar) {
            lowestSoFar = [currentNumber integerValue];
            
        }
    }
    
    
    // then set the lowest so far after all  numbers are done to be what we return
    resultNSInteger = lowestSoFar;
    
    return resultNSInteger;
}

@end
