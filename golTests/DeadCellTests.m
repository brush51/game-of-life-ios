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
#import "DeadCellTests.h"
#import "DeadCell.h"

@implementation DeadCellTests {
    NSObject<Cell>* deadCell;
}

- (void)setUp
{
    deadCell = [DeadCell new];
}

- (void)testCreationOfDeadCell
{
    assertThatBool([deadCell isAlive], is(equalToBool(NO)));
}

- (void)testDeadCellWithExactlyThreeNeighboursWillLive
{
    [DomainAssertions assertThatCellWillLive:deadCell withNumberOfNeighbours:3];
}

- (void)testDeadCellWithAnyOtherNumberOfNeighboursRemainsDead
{
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:0];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:1];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:2];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:4];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:5];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:6];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:7];
    [DomainAssertions assertThatCellWillBeDead:deadCell withNumberOfNeighbours:8];
}

@end