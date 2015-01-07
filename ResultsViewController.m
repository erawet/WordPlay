//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Don Wettasinghe on 1/6/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resultsTextView.text=[NSString stringWithFormat:@"Last friday %@ saw a %@ girl", self.nameText, self.adjectiveText];
    
}


@end
