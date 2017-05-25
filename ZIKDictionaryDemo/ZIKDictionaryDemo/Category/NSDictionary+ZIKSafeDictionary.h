//
//  NSDictionary+ZIKSafeDictionary.h
//  ZIKDictionaryDemo
//
//  Created by ZIKong on 2017/5/25.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kZIKEmptyString;

@interface NSDictionary (ZIKSafeDictionary)


// magus: return nil if the object is NSNull or not a NSNumber
- (NSNumber *)numberForKey:(id)key;

- (NSString *)stringForKey:(id)key;

// magus: return nil if the object is NSNull or not a NSDictionary
- (NSDictionary *)dictionaryForKey:(id)key;

// magus: return nil if the object is null or not a NSArray.
- (NSMutableArray *)arrayForKey:(id)key;

@end
