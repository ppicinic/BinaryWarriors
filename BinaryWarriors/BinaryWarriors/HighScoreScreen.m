//
//  HighScoreScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "HighScoreScreen.h"
#import "cocos2d.h"

@implementation HighScoreScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    HighScoreScreen* layer = [HighScoreScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        CCMenuItem* continueButton = [CCMenuItemFont itemWithString: @"Continue" target:self selector:@selector(onContinue:)];
        
        CCMenu* menu = [CCMenu menuWithItems:continueButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onContinue:(CCMenuItemFont *)button{
    
}

@end