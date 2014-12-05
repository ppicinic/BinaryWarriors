//
//  OptionsScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface OptionsScreen : CCLayer

/** Constructs the Options Screen */
+(CCScene*) scene;

/** Initializes the Options Screen */
-(id) init;

/** Handles the on audio event */
-(void) onAudio: (CCMenuItemFont*) button;

/** Handles the on scores event */
-(void) onScores: (CCMenuItemFont*) button;

/** Handles the on skill event */
-(void) onSkill: (CCMenuItemFont*) button;

/** Handles the on back event */
-(void) onBack: (CCMenuItemFont*) button;

@end


