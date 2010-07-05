//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

«OPTIONALHEADERIMPORTLINE»
#import "UIBug.h"
#import "UISpec.h"
#import "UIQuery.h"
#import "UIExpectation.h"
#import "TWTExpectation.h"

@interface «FILEBASENAMEASIDENTIFIER» : NSObject <UISpec> {
	
}

@end

@implementation «FILEBASENAMEASIDENTIFIER»

- (void)itShouldFail {
	[[expectThat(@"1") should] beNil];
}

@end