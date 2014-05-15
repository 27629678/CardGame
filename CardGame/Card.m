//
//  Card.m
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

#import "Card.h"

// Private Declarations
@interface Card ()
{
    
}

@end

@implementation Card

//- (int)match:(Card *)card {
//    int score = 0;
//    
//    if ([card.contents isEqualToString:self.contents]) {
//        score = 1;
//    }
//    
//    return score;
//}

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card* card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
