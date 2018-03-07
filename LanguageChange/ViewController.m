//
//  ViewController.m
//  LanguageChange
//
//  Created by 郑昊鸣 on 2018/3/1.
//  Copyright © 2018年 zhm. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "NTVLocalized.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.titleLabel setText:NTVLocalized(@"language", nil)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)changeLanguage:(id)sender {
    FirstViewController *vc = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
