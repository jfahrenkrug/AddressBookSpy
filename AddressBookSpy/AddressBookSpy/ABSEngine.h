//
//  ABSEngine.h
//  AddressBookSpy
//
//  Created by Johannes Fahrenkrug on 27.02.12.
//  Copyright (c) 2012 Springenwerk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface ABSEngine : NSObject {
    JSGlobalContextRef _JSContext;
}

- (JSGlobalContextRef) JSContext;
- (NSString *)runJS:(NSString *)aJSString;
- (void)loadJSLibrary:(NSString*)libraryName;

@end
