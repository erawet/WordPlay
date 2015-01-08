//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Don Wettasinghe on 1/6/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if ([self.nameTextField.text length]>0) {
        return YES;
    } else {
        return NO;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toWordSelection"]) {
        
            EnterAdjectiveViewController *eaVC= segue.destinationViewController;
        
            eaVC.name=self.nameTextField.text;
    }
    
}


@end
