//
//  ViewController.h
//  DelegateContactDetails
//
//  Created by test on 1/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end

