//
//  PlayingCardDeck.m
//  test
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Nick Kovurov. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init {
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
            }
        }
    }
    
    return self;
}

@end