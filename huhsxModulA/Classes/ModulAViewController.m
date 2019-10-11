//
//  ModulAViewController.m
//  CTMediator
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import "ModulAViewController.h"
#import <huhsxModulCategoryB/CTMediator+ModulB.h>

@interface ModulAViewController ()

@property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UIImage *image;
@end

@implementation ModulAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    if (self.showPicture) {
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *path = [bundle pathForResource:@"wallhaven-578223.png"
                          ofType:nil
                          inDirectory:@"huhsxModulA.bundle"];
        
        _image = [UIImage imageWithContentsOfFile:path];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:_image];
        imageView.frame = CGRectMake(0, 64, self.view.frame.size.width, 200);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.view addSubview:imageView];
    }
    
    //不使用这张图片传递
    UIButton *cancel = [[UIButton alloc]initWithFrame:CGRectMake(0, 200+64, self.view.frame.size.width/2.0, 40)];
    [cancel setTitle:@"don't show" forState:UIControlStateNormal];
    [cancel setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [cancel addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cancel];
    
    //使用这张图片传递
    UIButton *done = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2.0, 200+64, self.view.frame.size.width/2.0, 40)];
    [done setTitle:@"show" forState:UIControlStateNormal];
    [done setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [done addTarget:self action:@selector(doneAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:done];
    
    
    _tipLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 250+64, self.view.frame.size.width, 50)];
    _tipLabel.textAlignment = NSTextAlignmentCenter;
    _tipLabel.text = @"no message";
    [self.view addSubview:_tipLabel];
}

- (void)cancelAction {
    
    UIViewController *vc = [[CTMediator sharedInstance] modulBWithImage:nil callback:^(BOOL isLike) {
        self->_tipLabel.text = isLike?@"Like":@"Dislike";
    }];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)doneAction {
    
    UIViewController *vc = [[CTMediator sharedInstance] modulBWithImage:_image callback:^(BOOL isLike) {
        self->_tipLabel.text = isLike?@"Like":@"Dislike";
    }];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
