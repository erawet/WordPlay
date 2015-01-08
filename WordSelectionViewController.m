//
//  WordSelectionViewController.m
//  WordPlay
//
//  Created by Don Wettasinghe on 1/7/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "WordSelectionViewController.h"
#import "EnterAdjectiveViewController.h"
#import "EnterAdverbViewController.h"

@interface WordSelectionViewController ()

@end

@implementation WordSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"adverbSegue"]) {
        EnterAdverbViewController *advVC=segue.destinationViewController;
        advVC.userName=self.name;
    } else if ([segue.identifier isEqualToString:@"adjectiveSegue"]){
        EnterAdjectiveViewController *adjVC=segue.destinationViewController;
        adjVC.name=self.name;
    }

}

@end
