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
    
    [self.engine loadJSLibrary:@"handlebars-1.0.0.beta.6"];
    NSString *handlebarsTest = @"\
    var template = Handlebars.compile(\"It's log, log, it's {{size}}, it's {{weight}}, it's {{material}}!\");\
    var context = {size: 'big', weight: 'heavy', material: 'wood'};\
    template(context);";
    NSLog(@"Result: %@", [self.engine runJS:handlebarsTest]);
}

@end
