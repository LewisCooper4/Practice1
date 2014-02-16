//
//  PlayingCard.m
//  Practice1
//
//  Created by Lewis Cooper on 2/16/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (void) setSuit:(NSString *)suit
{
    NSArray *suits = [self validSuits];
    if ([suits containsObject:suit]) {
        self.suit = suit;
    }
    else {
        errno;
    }
}

- (NSString *) getSuit
{
    if (self.suit != nil) {
        return self.suit;
    }
    else {
        return @"?";
    }
}


- (NSString *) rankStrings:(NSInteger)rank
{   
    if (rank <= 0 || rank > 13) {
        return @"?";
    }
    else if (rank == 1) {
        return @"A";
    }
    else if (rank < 11) {
        return [NSString stringWithFormat:@"%d", rank];
    }
    else if (rank == 11) {
        return @"J";
    }
    else if (rank == 12) {
        return @"Q";
    }
    else if (rank == 13) {
        return @"K";
    }
    else {
        NSLog(@"HUGE PROBLEM");
        return 0;
    }
}

- (void) setRank:(NSUInteger)rank
{
    if (rank < 13) {
        self.rank = rank;
    }
    else {
        errno;
    }
    
}

- (NSUInteger) maxRank
{
    return 13;
}

- (NSString *) contents
{
    return [NSString stringWithFormat:@"%@%u", self.suit, self.rank];
}

- (NSArray *) validSuits
{
    return [[NSArray alloc] initWithObjects:@"♠", @"♥", @"♣", @"♦", nil];
}


@end
