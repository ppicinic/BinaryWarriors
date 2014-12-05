//
//  Level3.h
//  BinaryWarriors
//
//  Created by Kimberly Tobias on 11/6/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Level2.h"

@interface Level3 : Level2{
    NSMutableArray* bullets;
    CCTMXLayer* gunLayer;
}

/** Gets a scene for this layer */
+ (CCScene *) scene;

/** Constructor */
- (id) init;

/** Initializes the world */
- (void) initWorld;

/** Updates the level */
- (void) update: (ccTime)dt;

/** Destroys a bullet from the level */
-(void) destroyBullet: (id) bullet;

@end
