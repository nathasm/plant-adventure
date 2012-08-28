//
//  PlantViewController.m
//  PlantAdventure
//
//  Created by ernest andrade on 8/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlantViewController.h"
#import "MapViewController.h"
#import "AppDelegate.h"

@interface PlantViewController ()

@end

@implementation PlantViewController

@synthesize  navigationController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  // Set the title.
  self.title = @"Plant Adventure";
  self.tableView.rowHeight = 30;
  //self.tableView.backgroundColor = [UIColor blackColor];
  plants = [[[NSMutableArray alloc] initWithObjects:@"Editable Plants", @"Hedges", nil] retain];

  NSLog(@"viewDidLoad");
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
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
    return [plants count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease]; 
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:14.0];
    [[cell textLabel] setTextColor:[UIColor whiteColor]];
    [[cell textLabel] setBackgroundColor:[UIColor colorWithRed:173/255.0 green:173/255.0 blue:173/255.0 alpha:1.0]];
    [[cell contentView] setBackgroundColor:[UIColor colorWithRed:173/255.0 green:173/255.0 blue:173/255.0 alpha:1.0]];

    [cell.textLabel setText:[plants objectAtIndex:[indexPath row]]];  
  }
  return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath 
{ 
  [cell setBackgroundColor:[UIColor colorWithRed:.8 green:.8 blue:1 alpha:1]];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//  DetailViewController *dvc = [[DetailViewController alloc] initWithNibName:nil bundle:nil];
//  
//  // Pass the selected object to the new view controller.
//  [self.navigationController setNavigationBarHidden:NO animated:YES];
//  
//  dvc.title = [[NSString stringWithFormat:@"%@", [plants objectAtIndex:[indexPath row]]] retain];
//  [self.navigationController pushViewController:dvc animated:YES];
//  [dvc release];
//
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  MapViewController *mapView = [[MapViewController alloc] initWithNibName:nil bundle:nil];
  
  // Use the appDelegates navigation controller
  // Pass the selected object to the new view controller.
  //[self.navigationController setNavigationBarHidden:NO animated:YES];
  
  //mapView.title = [[NSString stringWithFormat:@"%@", [plants objectAtIndex:[indexPath row]]] retain];
  //[self.navigationController pushViewController:mapView animated:YES];
  //[mapView release];
  
}


@end
