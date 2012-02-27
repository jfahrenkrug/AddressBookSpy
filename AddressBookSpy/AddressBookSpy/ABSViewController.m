//
//  ABSViewController.m
//  AddressBookSpy
//
//  Created by Johannes Fahrenkrug on 27.02.12.
//  Copyright (c) 2012 Springenwerk. All rights reserved.
//

#import "ABSViewController.h"

@implementation ABSViewController
@synthesize engine=_engine;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.engine = [[ABSEngine alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"Result: %@", [self.engine runJS:@"['Welcome', 'from', 'JavaScript!'].join(' ')"]);
}

@end
