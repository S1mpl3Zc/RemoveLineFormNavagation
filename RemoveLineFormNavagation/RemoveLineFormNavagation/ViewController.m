//
//  ViewController.m
//  RemoveLineFormNavagation
//
//  Created by S1mpl3 on 16/4/16.
//  Copyright © 2016年 S1mpl3. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView{
    [super loadView];
    UIImageView *backgroundView =  [self.navigationController.navigationBar valueForKey:@"_backgroundView"];
    for (UIView *view in backgroundView.subviews) {
        if (view.bounds.size.height <= 1.0f) {
            [view removeFromSuperview];
        }
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"首页";
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
