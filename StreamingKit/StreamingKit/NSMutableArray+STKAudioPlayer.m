//
//  NSMutableArray+STKAudioPlayer.m
//  StreamingKit
//
//  Created by Thong Nguyen on 30/01/2014.
//  Copyright (c) 2014 Thong Nguyen. All rights reserved.
//

#import "NSMutableArray+STKAudioPlayer.h"

@implementation NSMutableArray(STKAudioPlayer)

-(void) enqueue:(id)obj
{
    [self insertObject:obj atIndex:0];
}

-(void) skipQueue:(id)obj
{
    [self addObject:obj];
}

-(id) dequeue
{
    if ([self count] == 0)
    {
        return nil;
    }
    
    id retval = [self lastObject];
    
    [self removeLastObject];
    
    return retval;
}

-(id) peek
{
    return [self lastObject];
}

-(id) peekRecent
{
    if (self.count == 0)
    {
        return nil;
    }
    
    return [self objectAtIndex:0];
}

@end
