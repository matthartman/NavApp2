//
//  RootViewController.h
//  NavApp2
//
//  Created by Matthew Hartman on 10/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
	IBOutlet NSMutableArray *views;
}

@property (nonatomic, retain) IBOutlet NSMutableArray *views;

@end
