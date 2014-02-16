//
//  PlayingCardDeck.m
//  Practice1
//
//  Created by Lewis Cooper on 2/16/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    
    if (self) {
        PlayingCard *ref = [[PlayingCard alloc] init];
        NSArray *suits = [ref validSuits];
        
        for (NSString *suit in suits) {
            for (int i = 1; i < 14; i++) {
                // create new card
                PlayingCard *newCard = [[PlayingCard alloc] init];
                [newCard setRank:i];
                [newCard setSuit:suit];
                
                //add the card
                [cards addObject:newCard];
            }
        }
    }
    
    return self;
}

@end
