//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *cheeseString = nil;

    cheeseString = [NSString stringWithFormat: @"My favorite cheese is %@.", cheeseName];

    return cheeseString;

}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    // - (BOOL)hasSuffix:(NSString *) char
    
    // 1. see if it ends with " cheese"
    
    /*
    BOOL doesEndCheese = [cheeseName hasSuffix:@" cheese"];
    
    if (!doesEndCheese){
        doesEndCheese = [cheeseName hasSuffix:@" Cheese"];
    }
    
     */
    
    BOOL doesEndCheese = [cheeseName hasSuffix:@" cheese"] || [cheeseName hasSuffix:@" Cheese"];
    

    // 2. figure out how long the string is and subtract the length of the " cheese" part
// @property(readonly) NSUInteger length
    
    NSUInteger cheeseLength = cheeseName.length - 7;
    
    // 3. if it does, get the part of the string before that.
    if (doesEndCheese) {
       return  [cheeseName substringToIndex: cheeseLength];
    } else {
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheeseString = nil;
    
    if (cheeseCount == 1) {
        cheeseString = [NSString stringWithFormat: @"1 cheese"];
    } else
    {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
    

        cheeseString = [NSString stringWithFormat: @"%ld cheeses", cheeseCount];
        
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseString;
}

@end
