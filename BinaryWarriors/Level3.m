//
//  Level3.m
//  BinaryWarriors
//
//  Created by Kimberly Tobias on 11/6/14.
//  Copyright (c) 2014 Phil Picinic. All rights reserved.
//

#import "Level3.h"
#import "Helper.h"
#import "Gorgon.h"
#import "Harpie.h"
#import "SoundEffects.h"
#import "Lives.h"
#import "GameController.h"
#import "Bullet.h"


#define REWARD_CRUSH_MONSTA 20

@implementation Level3 : Level2

+(CCScene *) scene
{
    // 'scene' is an autorelease object.
    CCScene* scene = [CCScene node];
    
    // 'layer' is an autorelease object.
    Level3 *layer = [Level3 node];
    
    // add layer as a child to scene
    [scene addChild: layer z:25];
    
    [scene addChild: [GameController make] z:25];
    
    return scene;
}

- (id) init {
    if([self isMemberOfClass:[Level3 class]])
        world = [CCTMXTiledMap tiledMapWithTMXFile:@"binarywarriors_level3.tmx"];
    
    if((self = [super init])) {
        bubbles = [[NSArray alloc]initWithObjects:
                   @"Caught!",@"Gotcha!",@"Take that!",@"Pow!",@"Ha, ha!",nil];
        gunLayer = [world layerNamed:@"gun"];
        
        feedback = [CCLabelTTF labelWithString:@"" fontName:@"Marker Felt" fontSize:24];
        
        [feedback setVisible:FALSE];
        
        [feedback setColor:ccc3(0,0,0)];
        
        [feedback setAnchorPoint:ccp(0,0)];
        
        // If you forget to add the feedback to the world and try to position
        // it later, cocos2d crashes
        [self addChild:feedback z:95];
        bullets = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) initWorld {
    [super initWorld];
    
}

- (void) update: (ccTime)dt{
    [super update: dt];
    if(caught || complete){
        return;
    }
    if([gunLayer tileGIDAt:[grace getPosition]] != 0){
        [grace foundWeapon];
        [gunLayer removeTileAt:[grace getPosition]];
    }
    if([grace hasWeapon] && [[GameController instance] shootPressed] ){
        CGPoint here = [grace getPosition];
        int direction = [grace getDirection];
        CGPoint to = [Helper tile:here toWorld:world];
        to.x += (direction * 16);
        to.y += 16;
        Bullet* bullet = [[Bullet alloc] initAt:to of:self direct:direction enem:enemies];
        [self addChild:bullet z:90];
        [bullets addObject:bullet];
    }
    for(Bullet* bullet in bullets){
        [bullet update];
    }
}

-(void) destroyBullet:(id)bullet{
    [self removeChild:bullet];
    [bullet destroy];
    //[bullets removeObject:bullet];
}


@end
