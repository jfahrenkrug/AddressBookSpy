//
//  ABSAppDelegate.h
//  AddressBookSpy
//
//  Created by Johannes Fahrenkrug on 27.02.12.
//  Copyright (c) 2012 Springenwerk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ABSViewController;

@interface ABSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ABSViewController *viewController;

@end
