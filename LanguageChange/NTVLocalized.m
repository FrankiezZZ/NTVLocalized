//
//  NTVLocalized.m
//  XHTVPortal
//
//  Created by 郑昊鸣 on 2018/3/1.
//  Copyright © 2018年 XinHuaTV. All rights reserved.
//

#import "NTVLocalized.h"
#import "NSBundle+language.h"

@implementation NTVLocalized
+ (NTVLocalized *)sharedInstance {
    static NTVLocalized *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NTVLocalized alloc] init];
    });
    return instance;
}

- (void)initLanguage{
    NSString *language=[self currentLanguage];
    if (language.length>0) {
        NSLog(@"自设置语言:%@",language);
    }else{
        [self systemLanguage];
    }
}
- (NSString *)currentLanguage{
    NSString *language=[[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage];
    return language;
}
- (void)setLanguage:(NSString *)language{
    [NSBundle setLanguage:language];
    
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:AppLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)systemLanguage{
    NSString *languageCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"][0];
    NSLog(@"系统语言:%@",languageCode);
    if([languageCode hasPrefix:@"zh-Hans"]){
        languageCode = @"zh-Hans";//简体中文
    }else if([languageCode hasPrefix:@"en"]){
        languageCode = @"en";//英语
    }
    [self setLanguage:languageCode];
}

@end
