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

#import "Cell.h"
#import "LivingCellTests.h"
#import "LivingCell.h"

@implementation LivingCellTests {
    NSObject<Cell>* livingCell;
}

- (void)setUp {
    livingCell = [LivingCell new];
}

-(void) testCreationOfLivingCell
{
    assertThatBool([livingCell isAlive], is(equalToBool(YES)));
}

-(void) testLivingCellWithLessThenTwoNeighboursDies
{
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:0 willLive:NO];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:1 willLive:NO];
}

- (void)testLivingCellWithTwoOrThreeNeighboursStillLives
{
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:2 willLive:YES];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:3 willLive:YES];
}

- (void)testLivingCellWithMoreThenThreeNeighboursDies
{
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:4 willLive:NO];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:5 willLive:NO];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:6 willLive:NO];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:7 willLive:NO];
    [DomainAssertions assertThatCell:livingCell withNumberOfNeighbours:8 willLive:NO];
}

@end
