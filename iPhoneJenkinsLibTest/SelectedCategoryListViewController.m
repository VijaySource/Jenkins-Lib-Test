//
//  SelectedCategoryListViewController.m
//  VLHealthCareLibraries
//
//  Created by Krishna Kishore on 30/06/14.
//  Copyright (c) 2014 VL. All rights reserved.
//

#import "SelectedCategoryListViewController.h"
#import "LocationViewController.h"
#define FONT_SIZE 16

@interface SelectedCategoryListViewController (){
    UITableViewCell *cell;
}

@end

@implementation SelectedCategoryListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil locationsArr:(NSMutableArray *)locationsArr title:(NSString *)title
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setSelectedLocationsArr:locationsArr];
        self.navigationItem.title = title;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = FALSE;
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - Table View Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.selectedLocationsArr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.textLabel.text = [[self.selectedLocationsArr objectAtIndex:indexPath.row] objectForKey:@"categoryName"];
    cell.textLabel.textColor = [UIColor purpleColor];
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:FONT_SIZE];
    cell.clearsContextBeforeDrawing = TRUE;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *selectedRowDetails = [[NSMutableArray alloc] init];
    [selectedRowDetails addObject:[self.selectedLocationsArr objectAtIndex:indexPath.row]];
    LocationViewController *mLocationViewController = [[LocationViewController alloc]initWithNibName:@"LocationViewController" bundle:nil locationsArr:selectedRowDetails];
    [self.navigationController pushViewController:mLocationViewController animated:YES];
    [selectedRowDetails release];
    [mLocationViewController release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    cell = nil;
    [_mtableView release];
    [super dealloc];
}
@end
