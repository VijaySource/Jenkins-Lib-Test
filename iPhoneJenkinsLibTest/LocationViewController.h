//
//  LocationViewController.h
//  locationsample
//
//  Created by Krishna Kishore on 25/06/14.
//  Copyright (c) 2014 Kishore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <LocationLib/LocationLib.h>

@interface LocationViewController : UIViewController

@property (retain, nonatomic) NSMutableArray *locationsArr;
@property (assign, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) LocationFinder *locationFinder;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil locationsArr:(NSMutableArray *)locationDetailsArr;

@end
