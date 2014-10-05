//
//  MainScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "MainScreen.h"
#import "OptionsScreen.h"
#import "cocos2d.h"

@implementation MainScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    MainScreen* layer = [MainScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init {
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        CCMenuItem* newButton = [CCMenuItemFont itemWithString: @"New" target:self selector:@selector(onNew:)];
        //CCMenuItemFont* resumeButton = [CCMenuItemFont itemWithString:@"Resume" target:self selector:@selector(onResume:)];
        CCMenuItemFont* optionsButton = [CCMenuItemFont itemWithString:@"Options" target:self selector:@selector(onOptions:)];
        CCMenuItemFont* quitButton = [CCMenuItemFont itemWithString:@"Quit" target:self selector:@selector(onQuit:)];
        
        CCMenu* menu = [CCMenu menuWithItems:newButton, optionsButton, quitButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onNew: (CCMenuItemFont*) button{
    
}

-(void) onOptions: (CCMenuItemFont*) button{
    [[CCDirector sharedDirector]pushScene:[OptionsScreen scene]];
}

-(void) onQuit: (CCMenuItemFont*) button{
    exit(0);
}

@end