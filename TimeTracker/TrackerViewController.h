//
//  TrackerViewController.h
//  TimeTracker
//
//  Created by Julian Bonilla on 5/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TrackerViewController : UIViewController {
    
    UILabel *workDuration;
    UIDatePicker *datePicker;
    UITextField *activityTextField;
}

@property (nonatomic, retain) IBOutlet UILabel *workDuration;
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UITextField *activityTextField;

- (IBAction)buttonPressed:(id)sender;

@end
