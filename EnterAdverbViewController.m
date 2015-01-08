//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Don Wettasinghe on 1/7/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "ResultsViewController.h"


@interface EnterAdverbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adverbText;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if ([self.adverbText.text length]>0) {
        return YES;
    }else{
        return NO;
    }
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ResultsViewController *resVC=segue.destinationViewController;
    resVC.nameText=self.userName;
    resVC.adverbText=self.adverbText.text;
    resVC.commingFromAdjView=NO;
    
}


@end
