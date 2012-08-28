//
//  MapViewController.h
//  PlantAdventure
//
//  Created by ernest andrade on 8/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class DetailViewController;

@interface MapViewController : UIViewController <MKMapViewDelegate>
{
  MKMapView *mapView;
  NSMutableArray *mapAnnotations;
}

@property (nonatomic, retain) MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *mapAnnotations;

@end
