//
//  main.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UISpec.h>

int main(int argc, char *argv[]) {
    
	[UISpec runSpecsAfterDelay:3]; //give your app some time to load before running the specs
	
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"___PROJECTNAMEASIDENTIFIER___AppDelegate");
    [pool release];
    return retVal;
}
