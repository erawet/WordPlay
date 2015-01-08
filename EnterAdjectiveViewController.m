//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Don Wettasinghe on 1/6/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if ([self.adjectiveTextField.text length]>0) {
        return YES;
    }else{
        return NO;
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    ResultsViewController *rVC=segue.destinationViewController;
   
    if ([segue.identifier isEqualToString:@"adjectiveToResult"]){
        rVC.adjectiveText= self.adjectiveTextField.text;
        rVC.nameText=self.name;
        rVC.commingFromAdjView=YES;
    }
    
}


@end
