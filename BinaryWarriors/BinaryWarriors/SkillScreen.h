//
//  SkillScreen.h
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface SkillScreen : CCLayer

+(CCScene*) scene;

-(id) init;

-(void) onEasy: (CCMenuItemFont*) button;

-(void) onIntermediate: (CCMenuItemFont*) button;

-(void) onHard: (CCMenuItemFont*) button;

-(void) onBack: (CCMenuItemFont*) button;

@end