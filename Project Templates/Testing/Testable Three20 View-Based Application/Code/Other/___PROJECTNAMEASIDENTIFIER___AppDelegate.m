//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "___PROJECTNAMEASIDENTIFIER___AppDelegate.h"

@implementation ___PROJECTNAMEASIDENTIFIER___AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
    TTNavigator* navigator = [TTNavigator navigator];
	navigator.persistenceMode = TTNavigatorPersistenceModeAll;
	navigator.window = [[[UIWindow alloc] initWithFrame:TTScreenBounds()] autorelease];
	
	TTURLMap* map = navigator.URLMap;
	
	[map from:@"*" toViewController:[TTWebController class]];
	
	// Add your other mappings here
	
    if (![navigator restoreViewControllers]) {
		// Put your root controller url here
		[navigator openURLAction:[TTURLAction actionWithURLPath:@"http://www.google.com"]];
	}
	
	return YES;
}

- (void)dealloc {
	[super dealloc];
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
	[[TTNavigator navigator] openURLAction:
	 [TTURLAction actionWithURLPath:URL.absoluteString]];
	return YES;
}

@end
