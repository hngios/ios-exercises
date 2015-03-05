//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */

    NSArray *arrayOfStarTrekCharacters = @[];
    
    // create the array from the string
    arrayOfStarTrekCharacters = [characterString componentsSeparatedByString:@";"];
    
    /*
    
    NSLog(@"The array of characters: %@ %@ %@ %@", arrayOfStarTrekCharacters[0], arrayOfStarTrekCharacters[1], arrayOfStarTrekCharacters[2], arrayOfStarTrekCharacters[3]);
    */
    
    return arrayOfStarTrekCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
   
    NSString *resultString = @"";
    
    //characterArray[0]
    
    for (NSInteger charIndex = 0; charIndex < characterArray.count; charIndex++) {
        NSLog(@"Character %ld is [%@]",charIndex,characterArray[charIndex]);
        resultString = ([resultString stringByAppendingString:characterArray[charIndex]]);
        
        if ((characterArray.count - 1) != charIndex) {
            resultString = ([resultString stringByAppendingString:@";"]);
        }
        
    }
    
    // resultString = ([resultString stringByAppendingString:characterArray[0]]);
    
    // (NSString *)stringByAppendingString:(NSString *)aString
    // resultString = ([resultString stringByAppendingString:@";"]);
    // resultString = ([resultString stringByAppendingString:@";"]);

    return resultString;

    
 /*   NSMutableArray *arrayOfStarTrekCharacters = [[NSMutableArray alloc] init];

    [arrayOfStarTrekCharacters insertObject: @"McCoy;" atIndex:4];
    [arrayOfStarTrekCharacters insertObject: @"Tuvok;" atIndex:5];
    
    NSLog(@"The array of added characters: %@, %@", [arrayOfStarTrekCharacters objectAtIndex:4,arrayOfStarTrekCharacters objectAtIndex:5]);

    return arrayOfStarTrekCharacters;
  */
}


- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSArray *resultArray = @[];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
/// Sort here
    resultArray = [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    
// NSLog(@"Sorted Array Object 0: %@", resultArray[0]);
    return resultArray;
}


- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL resultBOOL = NO;
    
    NSString *nameWorf = @"Worf";
    
    
    // Start loop here -- use a for in loop on characterArray (nsstring)
    
    // (element in collection), then statement
    
    for (NSString *name in characterArray){
        NSLog(@"%@ is part of the array of Star Trek Characters", name);
    
        NSRange match =[name rangeOfString:nameWorf];
        
        if (match.location == NSNotFound){
            NSLog(@"No match found!");
            // We don't need to change resultBOOL because it is already set to NO.
        }   else {
            NSLog(@"Match found!");
            resultBOOL = YES;
        }
    }
    return resultBOOL;
}

@end

