//
//  IFSUser.h
//  IFSLiveTest
//
//  Created by herui on 2020/3/3.
//  Copyright © 2020 ifensi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IFSUser : NSObject

/** 用户唯一标识 */
@property (nonatomic, copy) NSString *identifier;
/** 用户昵称 */
@property (nonatomic, copy) NSString *nick;
/** 用户头像url */
@property (nonatomic, copy) NSString *faceUrl;

@end

NS_ASSUME_NONNULL_END
