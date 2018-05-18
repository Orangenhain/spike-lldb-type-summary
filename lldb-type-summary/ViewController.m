//
//  ViewController.m
//  lldb-type-summary
//
//  Created by William Ork on 14.05.18.
//  Copyright © 2018 William Ork. All rights reserved.
//

#import "ViewController.h"

#import "MYObject.h"

#import "lldb-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)klickMich:(id)sender {
    MYObject *o = [MYObject new];
    MeineKlasse *k = [MeineKlasse new];

    // ADD breakpoint here
    NSLog(@"MYObject from ObjC: %@", o);
    NSLog(@"MYObject from ObjC: %@", o);

    [k nudge];
}


@end
