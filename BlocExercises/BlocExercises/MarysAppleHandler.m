//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

-(void)example {
  
}

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    NSInteger costOfTheBigApple = 1000000000;
    NSInteger costOfAppleComputer = 1000;
    NSInteger costOfApple = 6;
    NSInteger costOfGum = 5;
    
    BOOL maryCanAffordTheBigApple = dollars >= costOfTheBigApple;
    BOOL maryCanAffordAppleComputer = dollars >= costOfAppleComputer;
    BOOL maryCanAffordApple = dollars >= costOfApple;
    BOOL maryCanAffordGum = dollars >= costOfGum;
    
    
    if (maryCanAffordTheBigApple) {
        itemToReturn = @"have The Big Apple";
        
    } else if (maryCanAffordAppleComputer) {
        itemToReturn = @"have an Apple computer";
        
    } else if (maryCanAffordApple){
        itemToReturn = @"have an apple";

    } else if (maryCanAffordGum){
        itemToReturn = @"have some gum";
   
    } else {
        NSLog(@"For $%ld, Mary need to leave store.",(long) dollars);
        return @"get out of my store";
     
    }
    
   // NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
    
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */
    
    NSInteger costOfVodkaUndiscounted = 24;
    NSInteger costOfVodkaDiscounted = 18;
    
    NSUInteger cost;
    
    
    if (self.getsDiscount) {
        cost = costOfVodkaDiscounted;
    } else {
        cost = costOfVodkaUndiscounted;
    }
    
  return cost;
}


/* - (NSUInteger) dollarCostForAppleFlavoredVodka_paul {
        return (self.getsDiscount ? 18 : 24);
}
*/

@end
