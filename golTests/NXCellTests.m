//
//  NXCellTests.m
//  golTests
//
//  Created by Johannes Seitz on 26.03.12.
//  Copyright (c) 2012 Namics (Deutschland) GmbH. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "NXCellTests.h"
#import "NXCell.h"

@implementation NXCellTests

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
    NXCell *cell = [[NXCell alloc] init];
    assertThatBool([cell isAlive], is(equalToBool(YES)));
}

- (void)testThatCellObeysConwaysGameOfLifeLaws
{
    NXCell *cell = [[NXCell alloc] init];
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
