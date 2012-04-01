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
}
@synthesize isAlive = _isAlive;

- (id)init {
    self = [super init];
    if (self) {
        self.isAlive = YES;
    }
    return self;
}

@end