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
    
    NSString *favoriteCheeseStringWithCheese = @"cheddar.";
    NSLog(@"My favorite cheese is %@",favoriteCheeseStringWithCheese);
    
    return favoriteCheeseStringWithCheese;

}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    // - (BOOL)hasSuffix:(NSString *) char
    
    // 1. see if it ends with " cheese"
    BOOL doesEndCheese = [cheeseName hasSuffix:@" cheese"];

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
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        return @"";
        
    } else {
        
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
