//
//  CardGameViewController.m
//  Matchismo
//
//  Created by nik kov on 6/3/13.
//  Copyright (c) 2013 Stanford Uni. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;
@end

@implementation CardGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.deck = [[Deck alloc] init];
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    [sender setTitle:[[self.deck drawRandomCard] contents] forState:UIControlStateSelected];
    self.flipCount++;
}

@end
