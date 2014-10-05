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

+(CCScene*) scene;

-(id) init;

-(void) onAudio;
-(void) onScores;
-(void) onSkill;

@end


