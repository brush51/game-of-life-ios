//
//  golTests.m
//  golTests
//
//  Created by Johannes Seitz on 26.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "golTests.h"

@implementation golTests

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

- (void)testExample
{
    assertThat(@"Hallo", is(equalTo(@"Hallo")));
}

@end
