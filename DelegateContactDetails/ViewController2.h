//
//  ViewController2.h
//  DelegateContactDetails
//
//  Created by test on 1/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactInfo.h"

@protocol ViewController2Delegate <NSObject>

-(void)contactCreated:(ContactInfo*)newcontact;
-(void)updateContact;

@end

@interface ViewController2 : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *addressTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTF;

@property (nonatomic, weak) id<ViewController2Delegate>delegate;
- (IBAction)DoneButton:(id)sender;

@end
