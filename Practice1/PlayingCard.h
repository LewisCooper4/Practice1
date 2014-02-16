//
//  PlayingCard.h
//  Practice1
//
//  Created by Lewis Cooper on 2/16/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

- (void) setSuit:(NSString *)suit;
- (NSString *) getSuit;
- (NSArray *) validSuits;
- (NSString *) rankStrings:(NSInteger)number;
- (NSString *) contents;
- (NSUInteger) maxRank;
                     
@end
