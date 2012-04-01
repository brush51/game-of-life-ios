//
//  NXCell
//
//  Created by Johannes Seitz on 26.03.12.
//  Copyright (c) 2012 Namics (Deutschland) GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NXCell : NSObject

-(BOOL)willBeAliveNextRound;

@property (nonatomic) BOOL isAlive;
@property (nonatomic) char numberOfLiveNeighbors;
@end