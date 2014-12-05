
//
//  HighScoresScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface HighScoresScreen : CCLayer{
    CCMenuItemFont* toggleButton;
}

/** Constructs the High Scores Screen */
+(CCScene*) scene;

/** Initializes the High Scores Screen */
-(id) init;

/** Handles the on toggle event */
-(void) onToggle: (CCMenuItemFont*) button;

/** Handles the on back event */
-(void) onBack: (CCMenuItemFont*) button;

@end