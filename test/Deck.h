//
//  Deck.h
//  test
//
//  Created by Nick Kovurov on 6/3/13.
//  Copyright (c) 2013 Nick Kovurov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end