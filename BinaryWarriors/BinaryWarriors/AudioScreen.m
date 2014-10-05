//
//  AudioScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "AudioScreen.h"
#import "cocos2d.h"

@implementation AudioScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    AudioScreen* layer = [AudioScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        CCMenuItem* toggleButton = [CCMenuItemFont itemWithString: @"Toggle" target:self selector:@selector(onToggle:)];
        CCMenuItemFont* backButton = [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu* menu = [CCMenu menuWithItems:toggleButton, backButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onToggle: (CCMenuItemFont*) button{
    
}

-(void) onBack: (CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}

@end