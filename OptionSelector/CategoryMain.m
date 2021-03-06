//
//  CategoryMain.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoryMain.h"
#import "CategorySetup.h"

@interface CategoryMain ()

@property (nonatomic) CategorySetup *categoryBuild;

@end

@implementation CategoryMain

+ (instancetype)categoryManager {
    static CategoryMain *categoryManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        categoryManager = [[self alloc] init];
    });
    
    return categoryManager;
}

- (instancetype)init {
    if (self = [super init]) {
        self.categoryBuild = [[CategorySetup alloc] init];
        self.categories = [self.categoryBuild fetchCategories];
    }
    return self;
}

@end
