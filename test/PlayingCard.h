//
//  PlayingCard.h
//  test
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Nick Kovurov. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
