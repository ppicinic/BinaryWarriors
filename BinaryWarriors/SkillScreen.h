//
//  SkillScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface SkillScreen : CCLayer{
    CCLabelTTF *currentChoice;
}

/** Constructs the Skill Screen */
+(CCScene*) scene;

/** Initializes the Skill Screen */
-(id) init;

/** Handles the on easy event */
-(void) onEasy: (CCMenuItemFont*) button;

/** Handles the on intermediate event */
-(void) onIntermediate: (CCMenuItemFont*) button;

/** Handles the on hard event */
-(void) onHard: (CCMenuItemFont*) button;

/** Handles the on back event */
-(void) onBack: (CCMenuItemFont*) button;

/** Handles the on toggle event */
-(void) onToggle: (int) val;

@end