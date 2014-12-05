//
//  HighScoreScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface HighScoreScreen : CCLayer

/** Constructs the High Score Screen */
+(CCScene*) scene;

/** Initializes the High Score Screen */
-(id) init;

/** Handles on Continue press event */
-(void) onContinue: (CCMenuItemFont*) button;

@end