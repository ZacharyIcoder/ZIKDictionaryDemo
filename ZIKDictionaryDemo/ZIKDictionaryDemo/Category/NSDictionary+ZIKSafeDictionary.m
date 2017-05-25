//
//  NSDictionary+ZIKSafeDictionary.m
//  ZIKDictionaryDemo
//
//  Created by ZIKong on 2017/5/25.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "NSDictionary+ZIKSafeDictionary.h"

NSString * const kZIKEmptyString = @"";

@implementation NSDictionary (ZIKSafeDictionary)

// magus: return nil if the object is NSNull or not a NSNumber
- (NSNumber *)numberForKey:(id)key
{
    NSNumber *result = [self objectForKey:key];
    if([result isKindOfClass:[NSNumber class]])
    {
        return result;
    }
    else
    {
        return nil;
    }
}

// magus: return an empty string if the value is null or not a string.
- (NSString *)stringForKey:(id)key
{
    NSString *result = [self objectForKey:key];
    if([result isKindOfClass:[NSString class]])
    {
        return result;
    }
    if ([result isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@",result];
    }
    else {
        return kZIKEmptyString;
    }
}

// magus: return nil if the object is null or not a NSDictionary.
- (NSDictionary *)dictionaryForKey:(id)key
{
    NSDictionary *result = [self objectForKey:key];
    if([result isKindOfClass:[NSDictionary class]])
    {
        return result;
    }
    else {
        return nil;
    }
}

// magus: return nil if the object is null or not a NSArray.
- (NSMutableArray *)arrayForKey:(id)key
{
    NSMutableArray *result = [self objectForKey:key];
    if([result isKindOfClass:[NSArray class]])
    {
        return result;
    }
    else {
        
        return nil;
    }
}

@end
