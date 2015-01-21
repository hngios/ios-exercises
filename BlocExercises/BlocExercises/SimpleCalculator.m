//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) number {
    NSInteger numberPlusOne = number +  1;
    NSLog(@"number(%ld) + 1 = %ld",number, (long)numberPlusOne);

    return numberPlusOne;
}
- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
   
    NSInteger sum = number1 + number2;
    NSLog(@"Number1 + Number2 = %ld", (long)sum);
    
    return sum;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    NSInteger remainder = dividend % divisor;
    NSLog(@"The remainder is %ld", (long)remainder);
    
    return remainder;
}


@end
