//
//  Deck.m
//  Matchismo
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Stanford Uni. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck()
@end

@implementation Deck

- (id)init {
    self = [super init];
    
    if (self) {
        self.cards = [[NSMutableArray alloc] init];
        for (NSString *suit in [Card validSuits]) {
            for (NSUInteger rank = 0; rank < [[Card validRanks] count]; rank++) {
                Card *card = [[Card alloc] init];
                card.contents = [[[Card validRanks] objectAtIndex:rank] stringByAppendingString:suit];
                [self.cards addObject:card];
            }
        }
    }
    
    return self;
}

- (Card *)drawRandomCard {
    Card *randomCard = nil;
    
    unsigned index = arc4random() % self.cards.count;
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    
    return randomCard;
}

@end
