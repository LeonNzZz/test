//
//  NewsModel.m
//  SmartLC
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "NewsModel.h"

@implementation NewsModel
/**
 ①全部赋值
 ②将因为关键字问题不能全部赋值的再单独进行赋值
 ③调用初始化方法将值返回
 */
- (instancetype)initWithDictionary:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"description"]) {
        [self setValue:value forKey:@"Desc"];
    }if ([key isEqualToString:@"id"]) {
        [self setValue:value forKey:@"Id"];
    }
}

+ (instancetype)modelWithDictionary:(NSDictionary *)dict{
    
    return [[self alloc]initWithDictionary:dict];
//    model.create_time = dict[@"create_time"];
//    model.Desc = dict[@"description"];
//    model.Id = [dict[@"id"]integerValue];
//    model.image = dict[@"image"];
//    model.pics = dict[@"pics"];
//    model.sort = [dict[@"sort"]integerValue];
//    model.status = [NSNumber numberWithInteger:[dict[@"status"] integerValue]];
//    model.tel = dict[@"tel"];
//    model.title = dict[@"title"];
//    model.type_id = dict[@"type_id"];
//    model.uid = [dict[@"uid"]integerValue];
    
}


@end
