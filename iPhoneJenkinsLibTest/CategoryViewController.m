//
//  categoryViewController.m
//  locationsample
//
//  Created by Krishna Kishore on 25/06/14.
//  Copyright (c) 2014 Kishore. All rights reserved.
//

#import "categoryViewController.h"
#import <LocationLib/LocationSQLiteDBTask.h>
#import "SelectedCategoryListViewController.h"

#define INDEXVALUE 7
#define FONT_SIZE 16

@interface CategoryViewController (){
    UITableViewCell *cell;
}

@property (strong, nonatomic) LocationSQLiteDBTask *dbTask;
@end

@implementation CategoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _locationTrackerTableArr = [[NSMutableArray alloc] init];
        _categoryTableArr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = FALSE;
    _dbTask = [[LocationSQLiteDBTask alloc] init];
    self.navigationItem.title = @"Categories";
    NSString *queryStr = @"select * from CategoryTable";
    [self.categoryTableArr addObject:[self.dbTask readDataFromCategoryTablewithId:queryStr]];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - Table View Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.categoryTableArr objectAtIndex:0] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    NSString *index = [NSString stringWithFormat:@"%ld", (long)indexPath.row+1];
    cell.textLabel.text =[[[self.categoryTableArr objectAtIndex:0] objectAtIndex:indexPath.row] objectForKey:index];
    cell.textLabel.textColor = [UIColor purpleColor];
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:FONT_SIZE];
    cell.clearsContextBeforeDrawing = TRUE;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *index = [NSString stringWithFormat:@"%ld", (long)indexPath.row+1];
    self.selectedtext = [[[self.categoryTableArr objectAtIndex:0] objectAtIndex:indexPath.row] objectForKey:index];
    self.selectedtext = [self.selectedtext substringFromIndex:INDEXVALUE];
    NSMutableString *indexpath = [NSMutableString stringWithFormat:@"%ld", (long)indexPath.row+1];
    NSMutableString *queryStr =[NSMutableString stringWithFormat:@"select * from LocationTrackerTable where categoryId = '%@'", indexpath];
    self.locationTrackerTableArr = [self.dbTask readDataFromLocationTrackerTablewithId:queryStr];
    SelectedCategoryListViewController *mSelectedCategoryListViewController = [[SelectedCategoryListViewController alloc]initWithNibName:@"SelectedCategoryListViewController" bundle:nil locationsArr:self.locationTrackerTableArr title:self.selectedtext];
    [self.navigationController pushViewController:mSelectedCategoryListViewController animated:YES];
    [mSelectedCategoryListViewController release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_mTableView release];
    [_locationTrackerTableArr release];
    [_categoryTableArr release];
    [super dealloc];
}

@end
