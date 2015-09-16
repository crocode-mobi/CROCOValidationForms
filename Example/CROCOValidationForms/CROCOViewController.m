//
//  CROCOViewController.m
//  CROCOValidationForms
//
//  Created by pb.ojeda on 09/15/2015.
//  Copyright (c) 2015 pb.ojeda. All rights reserved.
//

#import "CROCOViewController.h"

// Utils
#import <NSString+ValidationForms.h>

@interface CROCOViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPass;


@end

@implementation CROCOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark -
#pragma mark - actions
- (IBAction)actionCheck:(id)sender {
    NSString *email = self.textFieldEmail.text;
    NSString *pass  = self.textFieldPass.text;
    
    if (![email validationBlank] || ![pass validationBlank]) {
        [self showAlertWithDescription:@"Can't be blank"];
    }
    else if (![email validateEmail]) {
        [self showAlertWithDescription:@"Wrong email format"];
    }
    else if (![pass validatePassWithMinLength:4 withAtLeastOneCharacter:true andAtLeastOneDigit:true]) {
        [self showAlertWithDescription:@"Pass should have at least 4 characters, at least 1 char and at least 1 digit"];
    }
    else {
        [self showAlertWithDescription:@"Everything is ok"];
    }
}


#pragma mark -
#pragma mark - utils
- (void) showAlertWithDescription:(NSString *)description {
    if ([UIAlertController class])
    {
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"CROCOVALIDATEFORMS" message:description preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];
        
        [self presentViewController:alertController animated:YES completion:nil];
        
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"CROCOVALIDATEFORMS" message:description delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
