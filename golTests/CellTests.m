//
//  CellTests.m
//  golTests
//
//  Created by Johannes Seitz on 26.03.12.
//

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "CellTests.h"
#import "Cell.h"

@implementation CellTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testCellCreation
{
    Cell *cell = [[Cell alloc] init];
    assertThatBool([cell isAlive], is(equalToBool(YES)));
}

- (void)testThatCellObeysConwaysGameOfLifeLaws
{
    Cell *cell = [[Cell alloc] init];
    // Living Cell
    cell.numberOfLiveNeighbors = 0;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(NO)));
    cell.numberOfLiveNeighbors = 2;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(YES)));
    cell.numberOfLiveNeighbors = 4;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(NO)));

    // Dead Cell
    cell.isAlive = NO;
    cell.numberOfLiveNeighbors = 2;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(NO)));
    cell.numberOfLiveNeighbors = 3;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(YES)));
    cell.numberOfLiveNeighbors = 4;
    assertThatBool([cell willBeAliveNextRound], is(equalToBool(NO)));
}

@end
