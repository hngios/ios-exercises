//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    //NSString *resultNSString = nil;
   
    NSString *resultNSString = nil;
    
    resultNSString = characterDictionary[@"favorite drink"];
    
    return resultNSString;
 

}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
   
    NSArray *resultNSArray = @[];
    
    /* 
     // for each character
     */
    for (NSDictionary *characterDictionary in charactersArray) {
            // look up their favorite drink
        NSString *favoriteDrink = [self favoriteDrinkForStarTrekCharacterDictionary: characterDictionary];
    
            // add it to the result array
        resultNSArray = [resultNSArray arrayByAddingObject: favoriteDrink];
    
     }
   
    return resultNSArray;
    
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *resultNSDictionary = [characterDictionary mutableCopy];
    
    resultNSDictionary[@"quote"] = @"Added quote to Star Trek Character Dictionary";
    
   // resultNSDictionary = characterDictionary @{};
    
    return resultNSDictionary;
    
}

@end



