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
- (IBAction)xxx:(id)sender;

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

- (IBAction)getFlower:(id )sender
{
    NSURL *imageURL;
    NSURL *detailURL;
    NSString    *imageURLString;
    NSString    *detailURLString;
    NSString    *color;
    int         sessionID;
    
    color = [self.selColorChoice titleForSegmentAtIndex:self.selColorChoice.selectedSegmentIndex];
    sessionID = random()%50000;
    imageURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",color, sessionID];
    detailURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
    imageURL=[NSURL URLWithString:imageURLString];
    detailURL=[NSURL URLWithString:detailURLString];
    [self.webvFlowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [self.webvFlowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
}

- (IBAction)toggleFlowerDetail:(UISwitch *)sender
{
    self.webvFlowerDetailView.hidden = [sender isOn];
}

- (IBAction)xxx:(id)sender
{
    [self getFlower:sender];
}
@end
