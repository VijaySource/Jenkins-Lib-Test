//
//  LocationLib.h
//  LocationLib
//
//  Created by Krishna Kishore on 26/06/14.
//  Copyright (c) 2014 Kishore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface LocationFinder : NSObject<MKMapViewDelegate>
-(void)showLocations:(NSMutableArray *)locationsArr mapviewInstance:(MKMapView *)mapView pointerImage:(UIImage *)image;
@end
