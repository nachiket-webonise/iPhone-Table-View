//
//  TableViewViewController.h
//  TableView
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> {
    IBOutlet UITableView *tblView;
    NSMutableArray *tableContents;
    IBOutlet UITableViewCell *tableCell;
    IBOutlet UILabel *lblTableContents;
}

@property (nonatomic, retain) IBOutlet UITableView *tblView;
@property (nonatomic,retain) NSMutableArray *tableContents;
@property (nonatomic,retain) IBOutlet UITableViewCell *tableCell;
@property (nonatomic,retain) IBOutlet UILabel *lblTableContents;

-(void)ShowAlertMsg:(NSString*)Msg withArg2:(NSString *)Title;

@end
