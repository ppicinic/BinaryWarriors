//
//  MainScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface MainScreen : CCLayer

/** Constructs the Main Screen */
+(CCScene*) scene;

/** Initializes the Main Screen */
-(id) init;

/** Handles the on new event */
-(void) onNew: (CCMenuItemFont*) button;

//-(void) onResume: (CCMenuItemFont*) button;

/** Handles the on options event */
-(void) onOptions: (CCMenuItemFont*) button;

/** Handles the on quit event */
-(void) onQuit: (CCMenuItemFont*) button;

@end
