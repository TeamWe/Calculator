//
//  ViewController.m
//  Calculator
//
//  Created by 徐纪光 on 15/3/10.
//  Copyright (c) 2015年 徐纪光. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize button,label,label1,string,num1,num2,num3,num4;//声明

//-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.alpha = 0.5;
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(20, 50, 280, 380)];
    
    view.layer.cornerRadius = 20 ;
    view.alpha = 1;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(40, 75, 240, 30)];
    self.label.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.textAlignment = NSTextAlignmentRight;
    self.label.font = [UIFont systemFontOfSize:20];
    self.label.text = @"请输入";
    [self.view addSubview:label];
    
    self.label1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 60, 240, 15)];
    self.label1.text = @"";
    self.label1.backgroundColor = [UIColor whiteColor];
    self.label1.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.label1];
    
    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(40, 110, 240, 300)];
    view1.layer.cornerRadius = 15;
    view1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view1];
    
    UIButton * button1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
    [button1 setTitle:@"C" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 setShowsTouchWhenHighlighted:YES];
    button1.backgroundColor = [UIColor whiteColor];
//        button1.alpha = 0.5;
    button1.layer.cornerRadius = 8;
    [button1 addTarget:self action:@selector(clean:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button1];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeSystem];//system?
    button2.frame = CGRectMake(65, 10, 50, 40);
    [button2 setTitle:@"DEL" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //继续看
    [button2 setShowsTouchWhenHighlighted:YES];
    button2.backgroundColor = [UIColor whiteColor];
    button2.layer.cornerRadius = 8;
//    [button2 addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];//touchupinside
    [view1 addSubview:button2];
    //over
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame = CGRectMake(120, 10, 50, 40);
    [button3 setTitle:@"/" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 setShowsTouchWhenHighlighted:YES];
    button3.backgroundColor = [UIColor whiteColor];
    button3.layer.cornerRadius = 8;
//    [button3 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button3];
    
    UIButton * button4 = [UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame = CGRectMake(175, 10, 50, 40);
    button4.backgroundColor = [UIColor whiteColor];
    button4.layer.cornerRadius = 8;
    [button4 setTitle:@"*" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button4 setShowsTouchWhenHighlighted:YES];
//    [button4 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button4];
    
    UIButton * button5 = [UIButton buttonWithType:UIButtonTypeSystem];
    button5.frame = CGRectMake(10, 60, 50, 40);
    [button5 setTitle:@"1" forState:UIControlStateNormal];
    [button5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button5.backgroundColor = [UIColor whiteColor];
    [button5 setShowsTouchWhenHighlighted:YES];
    button5.layer.cornerRadius = 8;
//    [button5 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button5];
    
    UIButton * button6 = [UIButton buttonWithType:UIButtonTypeSystem];
    button6.frame = CGRectMake(65, 60, 50, 40);
    [button6 setTitle:@"2" forState:UIControlStateNormal];
    [button6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button6.backgroundColor = [UIColor whiteColor];
    [button6 setShowsTouchWhenHighlighted:YES];
    button6.layer.cornerRadius = 8;
    //    [button6 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button6];
    
}

-(void)clean:(id)sender{
    [self.string setString:@""];
    self.num3 = 0;
    self.num2 = 0;
    self.label.text = @"0.0";
    self.label1.text = @"";
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
