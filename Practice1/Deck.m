//
//  Deck.m
//  Practice1
//
//  Created by Lewis Cooper on 2/16/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "Deck.h"


@implementation Deck

- (void) addCard:(Card *)card atTop:(BOOL)top
{
    [cards insertObject:card atIndex:0];
}

- (void) addCard:(Card *)card
{
    [cards addObject:card];
}

- (Card *) drawRandomCard
{
    int index = arc4random() % [cards count];
    
    Card *randomCard = [cards objectAtIndex:index];
    [cards removeObjectAtIndex:index];
    
    return randomCard;
    
}

- (NSMutableArray *) cards
{
    if (cards) {
        return cards;
    }
    cards = [[NSMutableArray alloc] init];
    return cards;
}

@end
