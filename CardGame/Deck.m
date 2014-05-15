//
//  Deck.m
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import "Deck.h"

@interface Deck ()

@property (strong, nonatomic) NSMutableArray* cards;    // of Card
@end

@implementation Deck

// getter property
- (NSMutableArray*)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}

- (void)addCard:(Card *)card AtTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
    
}

- (void)addCard:(Card *)card {
    [self addCard:card AtTop:NO];
}

- (Card*)drawRandomCard {
    Card* randomCard = nil;
    
    NSLog(@"牌堆总数：%d", [self.cards count]);
    if ([self.cards count]) {
        // arc4random() C lib methods to get a random integer
        unsigned index = arc4random()%[self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        NSLog(@"当前抽取的牌是:%@", randomCard.contents);
    }
    
    return randomCard;
}
@end
