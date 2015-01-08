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
    
   
    
    if (self.commingFromAdjView) {
      
        NSString *completString=[NSString stringWithFormat:@"Yesterday %@ saw a %@ girl.", self.nameText, self.adjectiveText];
        
        NSMutableAttributedString *finalString = [[NSMutableAttributedString alloc]initWithString:completString];
        
        UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        
        [finalString addAttribute:NSFontAttributeName value:font range:NSMakeRange(10, [self.nameText length])];
        [finalString addAttribute:NSForegroundColorAttributeName
                                          value:[UIColor redColor]
                                          range:NSMakeRange(10, [self.nameText length])];
        
        
        [finalString addAttribute:NSFontAttributeName value:font range:NSMakeRange(10+[self.nameText length]+7,[self.adjectiveText length])];
        [finalString addAttribute:NSForegroundColorAttributeName
                       value:[UIColor redColor]
                       range:NSMakeRange(10+[self.nameText length]+7,[self.adjectiveText length])];
        
        
        [self.resultsTextView setAttributedText:finalString ];
        
        
    }else{
        
        NSString *completString=[NSString stringWithFormat:@"%@ placed the vase %@ on the shelf.", self.nameText, self.adverbText];
        
        NSMutableAttributedString *finalString = [[NSMutableAttributedString alloc]initWithString:completString];
        
        UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
        
        [finalString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self.nameText length])];
        [finalString addAttribute:NSForegroundColorAttributeName
                            value:[UIColor redColor]
                            range:NSMakeRange(0, [self.nameText length])];
        
        
        [finalString addAttribute:NSFontAttributeName value:font range:NSMakeRange([self.nameText length]+17,[self.adverbText length])];
        [finalString addAttribute:NSForegroundColorAttributeName
                            value:[UIColor redColor]
                            range:NSMakeRange([self.nameText length]+17,[self.adverbText length])];
        
        
        [self.resultsTextView setAttributedText:finalString ];
        
    }
    
    
    
}


@end
