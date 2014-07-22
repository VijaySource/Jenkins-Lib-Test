//
//  LocationViewController.m
//  locationsample
//
//  Created by Krishna Kishore on 25/06/14.
//  Copyright (c) 2014 Kishore. All rights reserved.
//

#import "LocationViewController.h"
#import "AppDelegate.h"

@interface LocationViewController ()
@end

@implementation LocationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil locationsArr:(NSMutableArray *)locationsArr{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _locationFinder = [[LocationFinder alloc] init];
        [self setLocationsArr:locationsArr];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = FALSE;
    // Do any additional setup after loading the view from its nib.
    self.title = @"Location";
    [self.locationFinder showLocations:self.locationsArr mapviewInstance:self.mapView pointerImage:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) dealloc {
    [super dealloc];
    [_locationFinder release];
}
@end
