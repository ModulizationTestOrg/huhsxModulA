//
//  Target_ModulAViewController.m
//  CTMediator
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import "Target_ModulAViewController.h"
#import "ModulAViewController.h"

@interface Target_ModulAViewController ()

@end

@implementation Target_ModulAViewController

- (UIViewController *)Action_ModulAViewController:(NSDictionary *)param
{
    ModulAViewController *vc = [[ModulAViewController alloc]init];
    vc.showPicture = [param[@"showPicture"] boolValue];
    
    return vc;
}

@end
