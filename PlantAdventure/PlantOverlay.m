//
//  PlantOverlay.m
//  PlantAdventure
//
//  Created by ernest andrade on 8/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlantOverlay.h"

@implementation PlantOverlay

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
  self.backgroundColor = [UIColor blackColor];
}

-(void)setPlantName:(NSString *) plantName;
{
  self.plantName = plantName;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
