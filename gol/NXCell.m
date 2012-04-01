//
//  NXCell
//
//  Created by Johannes Seitz on 26.03.12.
//  Copyright (c) 2012 Namics (Deutschland) GmbH. All rights reserved.
//

#import "NXCell.h"


@implementation NXCell {
@private
    BOOL _isAlive;
    char _numberOfLiveNeighbors;
}
@synthesize isAlive = _isAlive;
@synthesize numberOfLiveNeighbors = _numberOfLiveNeighbors;

- (id)init {
    self = [super init];
    if (self) {
        self.isAlive = YES;
    }
    return self;
}

- (BOOL)willBeAliveNextRound {
    if (self.isAlive){
        return self.numberOfLiveNeighbors < 4 && self.numberOfLiveNeighbors >= 2;
    } else {
        return self.numberOfLiveNeighbors == 3;
    }
}

@end