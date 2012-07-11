// Copyright (c) 2012 Johannes Seitz
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
// documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to the Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
// Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "Board.h"
#import "Cell.h"

@implementation Board
@synthesize cells = _cells;

- (void)tick {
    NSMutableArray *newCells = [NSMutableArray new];
    for (int i = 0; i < [self.cells count]; i++) {
        Cell *oldCell = [self.cells objectAtIndex:i];
        int numberOfLivingNeighbours = [self fetchNumberOfLivingNeighbours:i];
        Cell *newCell = [oldCell cellForNextTickIfNumberOfNeighbours:numberOfLivingNeighbours];
        [newCells insertObject:newCell atIndex:i];
    }
    self.cells = newCells;
}

- (int)fetchNumberOfLivingNeighbours:(int)i {
    int numberOfLivingNeighbours = 0;
    if (i > 0){
        Cell *neighbourCell = [self.cells objectAtIndex:i-1];
        if ([neighbourCell isAlive]){
            numberOfLivingNeighbours++;
        }
    }
    if (i < [self.cells count] - 1){
        Cell *neighbourCell = [self.cells objectAtIndex:i+1];
        if ([neighbourCell isAlive]){
            numberOfLivingNeighbours++;
        }
    }
    return numberOfLivingNeighbours;
}
@end