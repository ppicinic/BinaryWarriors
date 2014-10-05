//
//  QuitScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "QuitScreen.h"
#import "cocos2d.h"

@implementation QuitScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    QuitScreen* layer = [QuitScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        CCMenuItem* quitButton = [CCMenuItemFont itemWithString: @"Quit" target:self selector:@selector(onQuit:)];
        CCMenuItemFont* cancelButton = [CCMenuItemFont itemWithString:@"Cancel" target:self selector:@selector(onCancel:)];
        
        CCMenu* menu = [CCMenu menuWithItems:quitButton, cancelButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onQuit:(CCMenuItemFont *)button{
    exit(0);
}

-(void) onCancel:(CCMenuItemFont *)button{
    [[CCDirector sharedDirector] popScene];
}

@end