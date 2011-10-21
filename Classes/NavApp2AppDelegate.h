//
//  NavApp2AppDelegate.h
//  NavApp2
//
//  Created by Matthew Hartman on 10/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavApp2AppDelegate : NSObject <UIApplicationDelegate> {
	//Application Model Data
	NSString *modelData;
	
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

- (void) setModelData:(NSString *)modelData;

- (NSString *) getModelData;

@end

