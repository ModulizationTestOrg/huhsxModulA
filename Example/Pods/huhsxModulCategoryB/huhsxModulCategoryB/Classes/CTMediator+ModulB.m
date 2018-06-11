//
//  CTMediator+ModulB.m
//  CTMediator
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import "CTMediator+ModulB.h"

@implementation CTMediator (ModulB)

- (UIViewController *)modulBWithImage:(UIImage *)image callback:(callBack)block
{
    if (!image) {
        image = [UIImage imageNamed:@"overwatch-genji-mecha-armored.jpg"];
    }
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:image forKey:@"image"];
    [dic setValue:block forKey:@"block"];
    
    return [self performTarget:@"ModulBViewController" action:@"ModulBViewController" params:dic shouldCacheTarget:NO];
}

@end
