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
    self.webvFlowerDetailView.hidden = NO;
    self.webvFlowerView.hidden = NO;
    [self getFlower:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    printf("\n\n\nMEMORY WARNING!!!!!\n\n\n");
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
    
    printf("We're here!\n");
    color = [self.selColorChoice titleForSegmentAtIndex:self.selColorChoice.selectedSegmentIndex];
    sessionID = random()%50000;
    imageURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",color, sessionID];
    printf("%s\n",imageURLString.UTF8String);
    detailURLString = [NSString stringWithFormat:@"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
    printf("%s\n", detailURLString.UTF8String);
    imageURL=[NSURL URLWithString:imageURLString];
    detailURL=[NSURL URLWithString:detailURLString];
    printf("Going into flower load view\n");
    [self.webvFlowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    printf("Now loading the detail\n");
    [self.webvFlowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
    printf("Done!\n\n");
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
