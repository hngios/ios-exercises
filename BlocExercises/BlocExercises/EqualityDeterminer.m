//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */

    if ([string1 isEqualToString: string2]) {
        NSLog(@"Got here, strings look equal");
        return YES;
    }
    NSLog(@"about to return no");

    return NO;
}



- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    BOOL result = [number1 isEqualToNumber: number2];
    
    NSLog(@"It was %@", (result?@"true":@"false"));
    
    if (result) {
        return YES;
    }

    return NO;
    
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    
    BOOL result = integer1 > integer2;
    
    if (result) {
        return YES; 
    }
    
    return NO;
  
}

@end