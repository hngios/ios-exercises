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
    
    NSArray *stringOfStarTrekCharacters = @[@"Troi;",
                                                    @"Riker;",
                                                    @"Kirk;",
                                                    @"Janeway;"];
    
  //  NSString *firstCharacter = [stringOfStarTrekCharacters objectAtIndex:0];

  // return NSLog(@"The array of characters: %@ %@ %@ %@", stringOfStarTrekCharacters)[0][1][2][3]);
   
  //  return @"The returned array was different than expected.";
  // return @"The returned array was different than expected.";

    return @[];
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
    
    //resultString = ([resultString stringByAppendingString:characterArray[0]]);
    //(NSString *)stringByAppendingString:(NSString *)aString
    
   // resultString = ([resultString stringByAppendingString:@";"]);
  //  resultString = ([resultString stringByAppendingString:@";"]);

    
    
    return resultString;
    
    
    
    /*
    NSMutableArray *stringOfStarTrekCharacters = [[NSMutableArray alloc] init];

    [stringOfStarTrekCharacters addObject: @"McCoy;"];
    [stringOfStarTrekCharacters addObject: @"Tuvok;"];
    
    NSLog(@"The array of added characters: %@, %@", stringOfStarTrekCharacters[4],stringOfStarTrekCharacters[5]);
          
    return @"The returned array was different than expected.";
    return @"The returned string was different than expected.";
     */
    
}


- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */


    
//    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCase][stringOfStarTrekCharacters sortUsingDescriptors:@[sortDescriptor]];
    
                                                                                         
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
    return @[];
}


- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return NO;
}

@end




















