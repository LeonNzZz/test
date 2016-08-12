//
//  NewsModel.h
//  SmartLC
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsModel : NSObject

@property (nonatomic, copy) NSString *create_time;
@property (nonatomic, copy) NSString *Desc;
@property (nonatomic, assign) NSInteger Id;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *pics;
@property (nonatomic, assign) NSInteger sort;
@property (nonatomic, strong) NSNumber *status;
@property (nonatomic, copy) NSString *tel;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *type_id;
@property (nonatomic, assign) NSInteger uid;

+ (instancetype)modelWithDictionary:(NSDictionary *)dict;

@end
