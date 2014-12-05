//
//  Bullet.h
//  BinaryWarriors
//
//  Created by Marist User on 11/18/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entity.h"
#import "Level3.h"

@interface Bullet : Entity {
    int xSpeed;
    int ySpeed;
    Level3* myLevel;
    bool destroyed;
    NSMutableArray* enemies;
}

@property(nonatomic) enum state state;

/** Updates a bullet */
-(void) update;

/** Moves the bullet?*/
-(void) moveTo: (int) x and: (int)y;

/** Moves conditionally */
-(void) moveOnCondition;

/** Returns true if the bullet collides with the level */
-(bool) collidesWithLevel;

/** handles a collision event */
-(void) collisionEvent;

/** stops the bullet from animating */
- (void) destroy;

/** Creates the bullet */
- (id) initAt:(CGPoint) here of:(Level3*) level_ direct: (int) _d enem: (NSMutableArray*) eneme;
@end
