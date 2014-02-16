//
//  Deck.h
//  Practice1
//
//  Created by Lewis Cooper on 2/16/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

{
    NSMutableArray *cards;
}

- (void) addCard:(Card *)card atTop:(BOOL)top;
- (void) addCard:(Card *)card;

- (Card *) drawRandomCard;
- (NSMutableArray *) cards;

@end
