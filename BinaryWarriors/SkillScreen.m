//
//  SkillScreen.m
//  BinaryWarriors
//
//  Created by Phil Picinic on 10/4/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "SkillScreen.h"
#import "cocos2d.h"

@implementation SkillScreen : CCLayer

+(CCScene*) scene{
    // Get a scene
    CCScene* scene = [CCScene node];
    SkillScreen* layer = [SkillScreen node];
    [scene addChild: layer];
    return scene;
}

-(id) init{
    if( (self= [super init])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        NSString* text = @"Choose Skill Level";
        
        CCLabelTTF *label = (CCLabelTTF*)[CCLabelTTF labelWithString:text fontName:@"Marker Felt" fontSize:24 dimensions: CGSizeMake(0,100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(255, 255, 255)];
        
        // position the label on the center of the screen
        label.position =  ccp( (screenWidth / 2) + (0)  , screenHeight - screenHeight/3 );
        
        // add the label as a child to this Layer
        [self addChild: label];
        
        CCMenuItem* easyButton = [CCMenuItemFont itemWithString: @"Easy" target:self selector:@selector(onEasy:)];
        CCMenuItemFont* intermediateButton = [CCMenuItemFont itemWithString:@"Intermediate" target:self selector:@selector(onIntermediate:)];
        CCMenuItemFont* hardButton = [CCMenuItemFont itemWithString:@"Hard" target:self selector:@selector(onHard:)];
        CCMenuItemFont* backButton = [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu* menu = [CCMenu menuWithItems:easyButton, intermediateButton, hardButton, backButton, nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth/ 2, screenHeight*0.25f)];
        
        [self addChild: menu];
    }
    return self;
}

-(void) onEasy: (CCMenuItemFont*) button{
    
}

-(void) onIntermediate: (CCMenuItemFont*) button{
    
}

-(void) onHard: (CCMenuItemFont*) button{
    
}

-(void) onBack: (CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}

@end
