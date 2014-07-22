//
//  ViewController.m
//  iPhoneJenkinsLibTest
//
//  Created by Manasa Ponnekanti on 7/21/14.
//  Copyright (c) 2014 VL. All rights reserved.
//

#import "ViewController.h"
#import "CategoryViewController.h"

@interface ViewController ()

- (IBAction)locationLibIntegrationBtnAction:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)locationLibIntegrationBtnAction:(id)sender {
    
    CategoryViewController *categoryViewController = [[CategoryViewController alloc] initWithNibName:@"CategoryViewController" bundle:nil];
    [self.navigationController pushViewController:categoryViewController animated:YES];
    [categoryViewController release];
    
    
}

@end
