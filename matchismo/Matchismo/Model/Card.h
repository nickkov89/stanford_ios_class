//
//  Card.h
//  Matchismo
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Stanford Uni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic) NSString *contents;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

@end