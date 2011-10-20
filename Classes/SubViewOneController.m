    //
//  SubViewOneController.m
//  NavApp2
//
//  Created by Matthew Hartman on 10/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SubViewOneController.h"
#import "NavApp2AppDelegate.h"

@implementation SubViewOneController

@synthesize label, button;

- (id) init {
	self = [super init];
	if (self != nil) {
		// set the title of this view
		self.title = NSLocalizedString(@"Subview One", @"");
	}
	return self;
}

- (IBAction) OnButtonClick:(id) sender {
	// this view will set our model data
    NavApp2AppDelegate *appDelegate = (NavApp2AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *displayString = [NSString stringWithFormat: @"Set By %@", [self title]];
    [appDelegate setModelData:displayString];
	//UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Button was clicked" message:@"Button Was Clicked" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];
	//[alert show];
}

- (void)onDataChangeEvent:(id) sender {
    [self getModelData];
}

-(void)viewWillAppear:(BOOL)animated {
    [self getModelData];
}

// set our label to reflect the latest copy of the data that we're observing
- (void) getModelData {
    NavApp2AppDelegate *appDelegate = (NavApp2AppDelegate *)[[UIApplication sharedApplication] delegate];
    [label setText:[appDelegate getModelData] ];
}


/*
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
