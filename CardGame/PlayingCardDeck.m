//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

// instancetype for ios7, new features
// object of self
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString* suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 0; rank != [PlayingCard maxRank]; rank ++) {
                PlayingCard* card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    NSLog(@"牌堆初始化完毕");
    return self;
}

@end
