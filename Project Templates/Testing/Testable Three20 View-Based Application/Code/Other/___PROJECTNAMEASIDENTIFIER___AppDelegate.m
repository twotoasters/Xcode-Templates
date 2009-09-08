//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "___PROJECTNAMEASIDENTIFIER___AppDelegate.h"

#ifdef BROMINET_ENABLED
	#import "ScriptRunner.h"
	#import "MyHTTPConnection.h"
#endif

@implementation ___PROJECTNAMEASIDENTIFIER___AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
#ifdef BROMINET_ENABLED
	// Listen for incoming instructions coming from the GUI tests.
	
	NSString *root = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) objectAtIndex:0];
	httpServer = [HTTPServer new];
	[httpServer setName:@"the iPhone"];
	[httpServer setType:@"_http._tcp."];
	[httpServer setConnectionClass:[MyHTTPConnection class]];
	[httpServer setDocumentRoot:[NSURL fileURLWithPath:root]];
	[httpServer setPort:50000];
	
	ScriptRunner *runner = [[[ScriptRunner alloc] init] autorelease];
	[MyHTTPConnection setSharedObserver:runner];
	
	NSError *error;
	if(![httpServer start:&error])
	{
		NSLog(@"Error starting HTTP Server: %@", error);
	}
#endif
	
    TTNavigator* navigator = [TTNavigator navigator];
	navigator.persistenceMode = TTNavigatorPersistenceModeAll;
	navigator.window = [[[UIWindow alloc] initWithFrame:TTScreenBounds()] autorelease];
	
	TTURLMap* map = navigator.URLMap;
	
	[map from:@"*" toViewController:[TTWebController class]];
	
	// Add your other mappings here
	
    if (![navigator restoreViewControllers]) {
		// Put your root controller url here
		[navigator openURL:@"http://www.google.com" animated:NO];
	}
}

- (void)dealloc {
	#ifdef BROMINET_ENABLED
		[httpServer release];
		[MyHTTPConnection setSharedObserver:nil];
	#endif
	[super dealloc];
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
	[[TTNavigator navigator] openURL:URL.absoluteString animated:NO];
	return YES;
}

@end
