//
//  ViewController.m
//  testing123
//
//  Created by Brian Mendez on 1/30/16.
//  Copyright © 2016 Brian Mendez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//added tableView with content -Brian
	self.tableView.delegate = self;
	self.tableView.dataSource = self;

	NSString *newString = [[NSString alloc] init];
	NSLog(@"%@", newString);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
	cell.textLabel.text = @"Hello";
	return cell;
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
