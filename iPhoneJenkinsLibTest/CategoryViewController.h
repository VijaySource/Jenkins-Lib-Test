//
//  categoryViewController.h
//  locationsample
//
//  Created by Krishna Kishore on 25/06/14.
//  Copyright (c) 2014 Kishore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *categoryTableArr;
@property (strong, nonatomic) NSMutableArray *locationTrackerTableArr;
@property (strong, nonatomic) NSString *selectedtext;
@property (retain, nonatomic) IBOutlet UITableView *mTableView;

@end
