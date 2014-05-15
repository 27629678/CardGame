//
//  Card.h
//  CardGame
//
//  Created by H-YXH on 5/14/14.
//  Copyright (c) 2014 NetEase. All rights reserved.
//

//#import <Foundation/Foundation.h>

// in iOS SDK specially
@import Foundation;

@interface Card : NSObject

// content of a card, such as A, 2, ...... K
// in obj-c, iOS will store all objects on heap
// nonatomic 非原子类型，非线程安全的
@property (strong, nonatomic) NSString* contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

//- (int)match:(Card*)card;
- (int)match:(NSArray*)otherCards;
@end
