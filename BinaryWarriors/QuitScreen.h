
//
//  QuitScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface QuitScreen : CCLayer

/** Constructs the Quit Screen */
+(CCScene*) scene;

/** Initializes the Quit Screen */
-(id) init;

/** Handles the on quit event */
-(void) onQuit: (CCMenuItemFont*) button;

/** Handles the on cancel event */
-(void) onCancel: (CCMenuItemFont*) button;

@end

