//
//  SubViewOneController.h
//  NavApp2
//
//  Created by Matthew Hartman on 10/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SubViewOneController : UIViewController {
	IBOutlet UILabel *label;
	IBOutlet UIButton *button;
}

@property (retain,nonatomic) IBOutlet UILabel *label;
@property (retain,nonatomic) IBOutlet UIButton *button;

- (IBAction) OnButtonClick:(id) sender;

- (void) getModelData;

@end
