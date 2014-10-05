//
//  OptionsScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "OptionsScreen.h"
#import "cocos2d.h"

@implementation OptionsScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    OptionsScreen* layer = [OptionsScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        CCMenuItem* newButton = [CCMenuItemFont itemWithString: @"Audio" target:self selector:@selector(onAudio:)];
        CCMenuItemFont* optionsButton = [CCMenuItemFont itemWithString:@"Skill Level" target:self selector:@selector(onSkill:)];
        CCMenuItemFont* quitButton = [CCMenuItemFont itemWithString:@"High Scores" target:self selector:@selector(onScores:)];
        
        CCMenu* menu = [CCMenu menuWithItems:newButton, optionsButton, quitButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onAudio{
    
}

-(void) onSkill{
    
}

-(void) onScores{
    
}


@end
