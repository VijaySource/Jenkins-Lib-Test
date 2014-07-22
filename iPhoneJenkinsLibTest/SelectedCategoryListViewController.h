//
//  SelectedCategoryListViewController.h
//  VLHealthCareLibraries
//
//  Created by Krishna Kishore on 30/06/14.
//  Copyright (c) 2014 VL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectedCategoryListViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *selectedLocationsArr;
@property (retain, nonatomic) IBOutlet UITableView *mtableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil locationsArr:(NSMutableArray *)locationsArr title:(NSString *)title;

@end
