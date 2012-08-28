//
//  MapViewController.m
//  PlantAdventure
//
//  Created by ernest andrade on 8/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"
#import "PlantOverlay.h"

@implementation MapViewController

@synthesize mapView, mapAnnotations;

- (void)viewDidAppear:(BOOL)animated
{
  NSLog(@"MapViewController: viewDidAppear");
  // bring back the toolbar
  [self.navigationController setToolbarHidden:YES animated:NO];
}

- (void)loadView
{
  mapView = [[MKMapView alloc] init];
  [mapView setFrame:[[UIScreen mainScreen] bounds]];
  [mapView setFrame:CGRectMake(0, 0, 320, 200)];
 
  UIView *overlay = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 320, 216)];
  overlay.backgroundColor = [UIColor blackColor];
  
  UILabel *plantName = [[UILabel alloc] initWithFrame:CGRectMake(30, 220, 100, 40)];
  plantName.text = @"Plant Name";
  plantName.backgroundColor = [UIColor whiteColor];
  
  [self.view addSubview:mapView];
  [self.view addSubview:overlay];
  [self.view addSubview:plantName];
}

- (void)viewDidLoad
{
  NSLog(@"MapViewController: viewDidLoad");

  mapView.mapType = MKMapTypeStandard;   // also MKMapTypeSatellite or MKMapTypeHybrid
  
  // create a custom navigation bar button and set it to always says "Back"
	UIBarButtonItem *temporaryBarButtonItem = [[UIBarButtonItem alloc] init];
	temporaryBarButtonItem.title = @"Back";
	self.navigationItem.backBarButtonItem = temporaryBarButtonItem;
	[temporaryBarButtonItem release];
  
  // create out annotations array (in this example only 2)
  mapAnnotations = [[NSMutableArray alloc] initWithCapacity:2];
}

- (void)viewDidUnload
{
  mapAnnotations = nil;
  mapView = nil;
}



@end
