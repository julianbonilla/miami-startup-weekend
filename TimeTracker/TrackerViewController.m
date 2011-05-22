//
//  TrackerViewController.m
//  TimeTracker
//
//  Created by Julian Bonilla on 5/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TrackerViewController.h"
#import "CompleteViewController.h"

@implementation TrackerViewController

@synthesize workDuration, datePicker, activityTextField;


- (void)dealloc
{
    [datePicker release];
    [workDuration release];
    [activityTextField release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [datePicker release];
    datePicker = nil;
    [workDuration release];
    workDuration = nil;
    
    [activityTextField release];
    activityTextField = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonPressed:(id)sender {
    CompleteViewController *complete = [[CompleteViewController alloc] initWithNibName:@"CompleteViewController" bundle:nil];
    [self.navigationController pushViewController:complete animated:YES];
    [complete release];
}

@end
