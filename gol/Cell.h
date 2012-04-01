//
//  NXCell
//
//  Created by Johannes Seitz on 26.03.12.
//

#import <Foundation/Foundation.h>


@interface Cell : NSObject

-(BOOL)willBeAliveNextRound;

@property (nonatomic) BOOL isAlive;
@property (nonatomic) char numberOfLiveNeighbors;
@end