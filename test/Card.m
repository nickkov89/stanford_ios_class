//
//  Card.m
//  test
//
//  Created by Nick Kovurov on 6/3/13.
//  Copyright (c) 2013 Nick Kovurov. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
}

@end