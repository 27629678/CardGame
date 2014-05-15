//
//  Deck.h
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card*)card AtTop:(BOOL)atTop;
- (void)addCard:(Card*)card;

- (Card*)drawRandomCard;
@end
