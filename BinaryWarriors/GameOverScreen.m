//
//  GameOverScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "GameOverScreen.h"
#import "cocos2d.h"

@implementation GameOverScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    GameOverScreen* layer = [GameOverScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        NSString* text = @"Game Over!";
        
        CCLabelTTF *label = (CCLabelTTF*)[CCLabelTTF labelWithString:text fontName:@"Marker Felt" fontSize:24 dimensions: CGSizeMake(0,100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0, 200, 255)];
        
        // position the label on the center of the screen
        label.position =  ccp( (screenWidth / 2) + (0)  , screenHeight/2 );
        
        // add the label as a child to this Layer
        [self addChild: label];
        
        CCMenuItem* continueButton = [CCMenuItemFont itemWithString: @"Continue" target:self selector:@selector(onContinue:)];
        
        CCMenu* menu = [CCMenu menuWithItems:continueButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onContinue:(CCMenuItemFont *)button{
    [[CCDirector sharedDirector] popScene];
}

@end
