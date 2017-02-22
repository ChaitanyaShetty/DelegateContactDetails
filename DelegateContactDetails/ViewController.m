//
//  ViewController.m
//  DelegateContactDetails
//
//  Created by test on 1/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController.h"
#import "ContactInfo.h"
#import "ViewController2.h"

@interface ViewController ()<ViewController2Delegate>
{
    NSMutableArray *values;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    values = [[NSMutableArray alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return values.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"tableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    ContactInfo *contact = values[indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"send"]) {
        ViewController2 *vc = [segue destinationViewController];
        vc.delegate = self;
    }
}

-(void)contactCreated:(ContactInfo *)newcontact
{
    [values addObject:newcontact];
    [_myTableView reloadData];
}

-(void)updateContact
{
    [_myTableView reloadData];
}

@end
