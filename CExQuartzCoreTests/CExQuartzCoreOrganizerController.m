//
//  CExQuartzCoreOrganizerController.m
//  DrawTransformer
//
//  Created by Daniel Lin on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CExQuartzCoreOrganizerController.h"

@implementation CExQuartzCoreOrganizerController

+ (NSMutableArray *) sharedCategories
{
    static dispatch_once_t onceToken;
    
    static NSMutableArray *gCategories = nil;
    
    dispatch_once(&onceToken, ^{
        gCategories = [[NSMutableArray alloc] init];
    });
    
    return gCategories;
}

//+ (NSArray*) sharedTests
//{
//    static dispatch_once_t
//}

+ (void) AddCategory:(NSString *) theCategory
{
    [[CExQuartzCoreOrganizerController sharedCategories] addObject:theCategory];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    NSInteger count = [CExQuartzCoreOrganizerController sharedCategories].count;
    
//    switch (section) {
//        case CExQuartzCoreCAAnimation:
//            count = CExCAAnimationTestsCount;
//            break;
//            
//        default:
//            break;
//    }
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = [[CExQuartzCoreOrganizerController sharedCategories] objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
    NSString *classString = [[CExQuartzCoreOrganizerController sharedCategories] objectAtIndex:indexPath.row];
    
    const char *cString = [classString cStringUsingEncoding:NSUTF8StringEncoding];
    
    id classObject = objc_getClass(cString);
    
    id theViewControllerInstance = class_createInstance(classObject, 0);

    NSString *nibName = nil;
    id a = nil;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        nibName = [classString stringByAppendingString:@"_iPhone"];
    }
    else {
        nibName = [classString stringByAppendingString:@"_iPad"];
    }
    
    a = [theViewControllerInstance initWithNibName:nibName bundle:nil];

    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:a animated:YES];
    [a release];
     
}

@end
