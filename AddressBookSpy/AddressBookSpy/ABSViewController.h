//
//  ABSViewController.h
//  AddressBookSpy
//
//  Created by Johannes Fahrenkrug on 27.02.12.
//  Copyright (c) 2012 Springenwerk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABSEngine.h"

@interface ABSViewController : UIViewController

@property (strong, nonatomic) ABSEngine *engine;

@property (weak, nonatomic) IBOutlet UITextField *searchTermField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)findPerson:(id)sender;

@end
