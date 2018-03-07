//
//  NTVLocalized.h
//  XHTVPortal
//
//  Created by 郑昊鸣 on 2018/3/1.
//  Copyright © 2018年 XinHuaTV. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const AppLanguage = @"appLanguage";
#define NTVLocalized(key, comment)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:AppLanguage]] ofType:@"lproj"]] localizedStringForKey:(key) value:@"" table:nil]

@interface NTVLocalized : NSObject
+ (NTVLocalized *)sharedInstance;

//初始化多语言功能
- (void)initLanguage;

//当前语言
- (NSString *)currentLanguage;

//设置要转换的语言
- (void)setLanguage:(NSString *)language;

//设置为系统语言
- (void)systemLanguage;

@end
