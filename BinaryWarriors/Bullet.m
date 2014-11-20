//
//  Bullet.m
//  BinaryWarriors
//
//  Created by Marist User on 11/18/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "Bullet.h"
#import "Entity.h"
//#import "Level1.h"
//#import "level3.h"
#define SPEED_FLYA 4

#define FACING_LEFT 1
#define FACING_RIGHT 0

@implementation Bullet : Entity

- (void) update {
    if(destroyed){
        return;
    }
	[self moveOnCondition];
}

-(void) moveTo:(int) dx and: (int) dy {
	[self setPosition:ccp(self.x + dx,self.y + dy)];
    
}

-(void) moveOnCondition {
	[self moveTo: xSpeed and: ySpeed];
	
	if([self collidesWithLevel]) {
		[myLevel destroyBullet: self];
		
		[self collisionEvent];
	}
}

-(bool) collidesWithLevel {
	return [level collidesWith: self];
}

-(void) collisionEvent {
    for(Enemy* enemy in enemies){
        if([enemy collidesWithBullet: self]){
            destroyed = true;
        }
    }
}

-(void) destroy {
    destroyed = true;
}

- (id) initAt:(CGPoint) here of:(Level3*) level_ direct: (int) _d  enem: (NSMutableArray*) eneme{
    [super initWithFrames: @"bullet.png" width:10 andHeight:10];
    enemies = eneme;
	destroyed = false;
	xSpeed = SPEED_FLYA * _d;
	
	ySpeed = 0;
    
    [self collisionEvent];
	
	[self setPosition:here];
    [self nextFrame];
    
    level = level_;
    myLevel = level_;
	
	return self;
}


@end
