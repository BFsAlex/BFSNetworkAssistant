//
//  BFSNetworkAssistant.m
//  BFSNetworkAssistant
//
//  Created by Alex BF on 2019/1/11.
//  Copyright © 2019年 Alex BF. All rights reserved.
//

#import "BFSNetworkAssistant.h"
#import <AFNetworking/AFNetworking.h>

@implementation BFSNetworkAssistant

static BFSNetworkAssistant *assistant;
static dispatch_once_t onceToken;

+ (instancetype)sharedAssistant {
    
    dispatch_once(&onceToken, ^{
        assistant = [[BFSNetworkAssistant alloc] init];
    });
    
    return assistant;
}

+ (void)destoryAssistant {
    
    if (assistant) {
        assistant = nil;
        onceToken = 0;
    }
}

#pragma mark - Test



@end
