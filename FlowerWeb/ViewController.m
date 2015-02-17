//
//  ViewController.m
//  FlowerWeb
//
//  Created by Gary Coakley on 2/16/15.
//  Copyright (c) 2015 Gary Coakley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *selColorChoice;
@property (weak, nonatomic) IBOutlet UIWebView *webvFlowerView;
@property (weak, nonatomic) IBOutlet UIWebView *webvFlowerDetailView;

- (IBAction)getFlower:(UIButton *)sender;
- (IBAction)toggleFlowerDetail:(UISwitch *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getFlower:(UIButton *)sender {
}

- (IBAction)toggleFlowerDetail:(UISwitch *)sender {
}
@end
