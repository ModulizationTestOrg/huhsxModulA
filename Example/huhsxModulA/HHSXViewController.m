//
//  HHSXViewController.m
//  huhsxModulA
//
//  Created by huhaosanxiong on 06/08/2018.
//  Copyright (c) 2018 huhaosanxiong. All rights reserved.
//

#import "HHSXViewController.h"
#import "ModulAViewController.h"

@interface HHSXViewController ()

@end

@implementation HHSXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)buttionAction:(id)sender {
    ModulAViewController *vc = [[ModulAViewController alloc]init];
    vc.showPicture = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
