//
//  ViewController2.m
//  DelegateContactDetails
//
//  Created by test on 1/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController2.h"
#import "ContactInfo.h"
#import "ViewController.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)DoneButton:(id)sender {
    ContactInfo *new = [[ContactInfo alloc]init];
    new.name = self.nameTF.text;
    new.address = self.addressTF.text;
    new.phoneNumber = self.phoneNumberTF.text;
    [_delegate contactCreated:new];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
