//
//  Card.m
//  Matchismo
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Stanford Uni. All rights reserved.
//

#import "Card.h"

@implementation Card

+ (NSArray *)validRanks {
    return @[@"A",@"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSArray *)validSuits {
   return @[@"♥", @"♠", @"♦", @"♣"];
}

@end
