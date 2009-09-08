//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import <Three20/Three20.h>

#ifdef BROMINET_ENABLED
	#import "HTTPServer.h"
#endif

@interface ___PROJECTNAMEASIDENTIFIER___AppDelegate : NSObject <UIApplicationDelegate> {
	#ifdef BROMINET_ENABLED
		HTTPServer *httpServer;
	#endif
}

@end

