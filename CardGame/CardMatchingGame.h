//
//  CardMatchingGame.h
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

@property (nonatomic, readonly) NSInteger score;

- (instancetype)initWithCardCount:(NSUInteger)count UsingDeck:(Deck*)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card*)cardAtIndex:(NSInteger)index;
@end
