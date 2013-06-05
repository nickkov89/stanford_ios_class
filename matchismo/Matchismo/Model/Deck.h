//
//  Deck.h
//  Matchismo
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Stanford Uni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (nonatomic, strong) NSMutableArray *cards;

- (Card *)drawRandomCard;

@end