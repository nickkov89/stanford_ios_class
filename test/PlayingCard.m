//
//  PlayingCard.m
//  test
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Nick Kovurov. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents {
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits {
    return @[@"♥", @"♠", @"♦", @"♣"];
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank { return [self rankStrings].count-1; }

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
