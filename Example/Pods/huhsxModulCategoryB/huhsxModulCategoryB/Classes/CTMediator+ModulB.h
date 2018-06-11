//
//  CTMediator+ModulB.h
//  CTMediator
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import <CTMediator/CTMediator.h>

typedef void(^callBack)(BOOL isLike);

@interface CTMediator (ModulB)

- (UIViewController *)modulBWithImage:(UIImage *)image callback:(callBack)block;

@end

