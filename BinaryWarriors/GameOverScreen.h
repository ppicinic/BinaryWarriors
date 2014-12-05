//
//  GameOverScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface GameOverScreen : CCLayer

/** Constructs the Game Over Screen */
+(CCScene*) scene;

/** Initializes the Game Over Screen */
-(id) init;

/** Handles on Continue press event */
-(void) onContinue: (CCMenuItemFont*) button;

@end