//
//  PlayingCard.h
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString* suit;   //花色
@property (nonatomic) NSUInteger rank;  //大小

+ (NSArray*)validSuits;
+ (NSArray*)rankStrings;
+ (NSUInteger)maxRank;
@end
