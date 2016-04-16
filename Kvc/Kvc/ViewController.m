//
//  ViewController.m
//  Kvc
//
//  Created by S1mpl3 on 16/4/16.
//  Copyright © 2016年 S1mpl3. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    Person *p1 = [Person new];
    p1.name = @"zs";
    p1.money = 111;
    
    Person *p2 = [Person new];
    p2.name = @"ls";
    p2.money = 222;
    
    NSArray *array = @[p1, p2] ;
    NSArray *res = [array valueForKeyPath:@"money"];
    NSLog(@"%@", res);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
