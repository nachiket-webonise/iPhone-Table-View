//
//  TableViewViewController.m
//  TableView
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import "TableViewViewController.h"

@implementation TableViewViewController

@synthesize tblView,tableContents,tableCell,lblTableContents;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTableView];
    self.tableContents = [[NSMutableArray alloc] initWithObjects:@"First Row",@"Second Row",nil];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)setTableView {
    tblView.delegate = self;
    tblView.dataSource = self;
}

    // Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableContents count];
}

-(void)tableView:(UITableView *)tableSettings didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
            [self ShowAlertMsg:@"" withArg2:@"First Row Clicked"];
            break;
            
        case 1: 
            [self ShowAlertMsg:@"" withArg2:@"Second Row Clicked"];
            break;
            
        default:
            break;
    }
    
}

    // Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Update table cell");
    UITableViewCell *cell = [tblView dequeueReusableCellWithIdentifier:@"tableViewCellIdentifier"];
    
    
    [[NSBundle mainBundle] loadNibNamed:@"tableCell" owner:self options:nil];
    cell = self.tableCell;
    
    //Place background image here for the background for non clicked state. 
        /*UIImageView* img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"btntrasnparentbg.png"]];
        [cell setBackgroundView:img];*/
    
    //Place background image for clicked state for cell
        /*UIImage *selectionBackground = [UIImage imageNamed:@"btntrasnparentbg_over.png"];
        UIImageView *iview=[[UIImageView alloc] initWithImage:selectionBackground];
        cell.selectedBackgroundView=iview;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;*/
    
    self.tableCell = nil;
    
        // Configure the cell.
    lblTableContents.text = [self.tableContents objectAtIndex: [indexPath row]];    
    return cell;
}

-(void)ShowAlertMsg:(NSString*)Msg withArg2:(NSString *)Title {
    
    UIAlertView *alert;
    
    alert = [[UIAlertView alloc] initWithTitle:Title message:Msg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];   
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
