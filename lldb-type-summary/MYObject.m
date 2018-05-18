//
//  MYObject.m
//  lldb-type-summary
//
//  Created by William Ork on 14.05.18.
//  Copyright © 2018 William Ork. All rights reserved.
//

#import "MYObject.h"

@implementation MYObject

- (NSString *) stuff
{
    static int i = 0;
    
    return [@[
              @"Cpt. Picard",
              @"Number 1",
              ] objectAtIndex:i++ % 2];
}

- (NSString *)debugDescription
{
    return [self stuff];
}

@end
