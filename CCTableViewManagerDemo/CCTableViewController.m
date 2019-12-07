//
//  CCTableViewController.m
//  CCTableViewManagerDemo
//
//  Created by CC on 2019/12/7.
//  Copyright © 2019 CC (deng you hua | cworld1000@gmail.com). All rights reserved.
//

#import "CCTableViewController.h"
#import <RETableViewManager/RETableViewManager.h>

@interface CCTableViewController ()

@property (nonatomic, strong) RETableViewManager *manager;

@end

@implementation CCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.manager = [[RETableViewManager alloc] initWithTableView:self.tableView];
    
    RETableViewSection *section = [RETableViewSection sectionWithHeaderTitle:@"Test"];
    [self.manager addSection:section];
    
    [section addItem:@"Just a simple NSString"];
    [section addItem:[RETableViewItem itemWithTitle:@"String Cell" accessoryType:UITableViewCellAccessoryDisclosureIndicator selectionHandler:^(RETableViewItem *item) {
        NSLog(@"Test : %@", item);
    }]];
}

@end
