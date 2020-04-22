//
//  IFSLiveSDKConfig.h
//  IFSLiveSDK
//
//  Created by herui on 2020/3/6.
//  Copyright © 2020 ifensi. All rights reserved.
//

#define IFSLog(...) if([IFSLiveSDKConfig sharedInstance].logEnable) {printf("%s\n", [[NSString stringWithFormat:__VA_ARGS__]UTF8String]);}


#import <UIKit/UIKit.h>
#import "IFSUser.h"


NS_ASSUME_NONNULL_BEGIN

@interface IFSLiveSDKConfig : NSObject

@property (nonatomic, assign) BOOL logEnable;

/// 进入直播间之前需要设置用户信息
@property (nonatomic, strong) IFSUser *user;

/// 直播间有横竖屏之分，在此回调方法中修改设备方向
@property (nonatomic, copy) void(^onChangeDeviceOrientation)(UIDeviceOrientation orientation);


/// 获取单例对象
+ (instancetype)sharedInstance;

@end





NS_ASSUME_NONNULL_END
