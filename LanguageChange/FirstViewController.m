//
//  FirstViewController.m
//  LanguageChange
//
//  Created by 郑昊鸣 on 2018/3/1.
//  Copyright © 2018年 zhm. All rights reserved.
//

#import "FirstViewController.h"
#import "NTVLocalized.h"
#import "ViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [button addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)change {
    [[NTVLocalized sharedInstance] setLanguage:@"zh-Hans"];
//    [[NTVLocalized sharedInstance] setLanguage:@"en"];
    
    [self initRootVC];
}

- (void)initRootVC{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [sb instantiateInitialViewController];
    [UIApplication sharedApplication].keyWindow.rootViewController = vc;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
