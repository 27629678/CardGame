//
//  PlayingCard.m
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;   // because we provide setter AND getter
@synthesize rank = _rank;

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if ([otherCards count] == 1) {
        PlayingCard* otherCard = [otherCards firstObject];
        
        if ([self.suit isEqualToString:otherCard.suit]) {
            score = 1;
        } else if (self.rank == otherCard.rank) {
            score = 4;
        }
    }
    
    return score;
}

// overwriting base class contents getter method
- (NSString*)contents {
    NSArray* rankArray = [PlayingCard rankStrings];
    return [rankArray[self.rank] stringByAppendingString:self.suit];
}

// Class Method
+ (NSArray*)validSuits {
    return @[@"♥", @"♠", @"♦", @"♣"];
}

// Class Method
+ (NSArray*)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank { return [[PlayingCard rankStrings] count] - 1; }

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString*)suit {
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}
@end
