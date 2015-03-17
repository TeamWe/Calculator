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
    
    UIButton * button1 = [[UIButton alloc] initWithFrame:CGRectMake(11, 20, 50, 50)];
    [button1 setTitle:@"C" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 setShowsTouchWhenHighlighted:YES];
    button1.backgroundColor = [UIColor whiteColor];
//        button1.alpha = 0.5;
    button1.layer.cornerRadius = 8;
    [button1 addTarget:self action:@selector(clean:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button1];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeSystem];//system?
    button2.frame = CGRectMake(67, 20, 50, 50);
    [button2 setTitle:@"DEL" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //继续看
    [button2 setShowsTouchWhenHighlighted:YES];
    button2.backgroundColor = [UIColor whiteColor];
    button2.layer.cornerRadius = 8;
    [button2 addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];//touchupinside
    [view1 addSubview:button2];
    //over
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame = CGRectMake(123, 20, 50, 50);
    [button3 setTitle:@"/" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 setShowsTouchWhenHighlighted:YES];
    button3.backgroundColor = [UIColor whiteColor];
    button3.layer.cornerRadius = 8;
    [button3 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button3];
    
    UIButton * button4 = [UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame = CGRectMake(179, 20, 50, 50);
    button4.backgroundColor = [UIColor whiteColor];
    button4.layer.cornerRadius = 8;
    [button4 setTitle:@"*" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button4 setShowsTouchWhenHighlighted:YES];
    [button4 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button4];
    
    UIButton * button5 = [UIButton buttonWithType:UIButtonTypeSystem];
    button5.frame = CGRectMake(11, 76, 50, 50);
    [button5 setTitle:@"7" forState:UIControlStateNormal];
    [button5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button5.backgroundColor = [UIColor whiteColor];
    [button5 setShowsTouchWhenHighlighted:YES];
    button5.layer.cornerRadius = 8;
    [button5 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button5];
    
//    UIButton * button6 = [UIButton buttonWithType:UIButtonTypeSystem];
//    button6.frame = CGRectMake(65, 60, 50, 40);
//    [button6 setTitle:@"2" forState:UIControlStateNormal];
//    [button6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    button6.backgroundColor = [UIColor whiteColor];
//    [button6 setShowsTouchWhenHighlighted:YES];
//    button6.layer.cornerRadius = 8;
//    //    [button6 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
//    [view1 addSubview:button6];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeSystem];
    button7.frame = CGRectMake(67 , 76, 50, 50);
    [button7 setTitle:@"8" forState:UIControlStateNormal];
    [button7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button7 setShowsTouchWhenHighlighted:YES];
    button7.backgroundColor = [UIColor whiteColor];
    button7.layer.cornerRadius = 8;
    [button7 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button7];
    //9
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeSystem];
    button8.frame = CGRectMake(123 , 76, 50, 50);
    [button8 setTitle:@"9" forState:UIControlStateNormal];
    [button8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button8 setShowsTouchWhenHighlighted:YES];
    button8.backgroundColor = [UIColor whiteColor];
    button8.layer.cornerRadius = 8;
    [button8 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button8];
    //-
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeSystem];
    button9.frame = CGRectMake(179 , 76, 50, 50);
    [button9 setTitle:@"-" forState:UIControlStateNormal];
    [button9 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button9 setShowsTouchWhenHighlighted:YES];
    button9.backgroundColor = [UIColor orangeColor];
    button9.layer.cornerRadius = 8;
    [button9 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button9];
    //4
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeSystem];
    button10.frame = CGRectMake(11 , 132, 50, 50);
    [button10 setTitle:@"4" forState:UIControlStateNormal];
    [button10 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button10 setShowsTouchWhenHighlighted:YES];
    button10.backgroundColor = [UIColor whiteColor];
    //    button5.alpha = 0.3;
    button10.layer.cornerRadius = 8;
    [button10 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button10];
    //5
    UIButton *button11 = [UIButton buttonWithType:UIButtonTypeSystem];
    button11.frame = CGRectMake(67 , 132, 50, 50);
    [button11 setTitle:@"5" forState:UIControlStateNormal];
    [button11 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button11 setShowsTouchWhenHighlighted:YES];
    button11.backgroundColor = [UIColor whiteColor];
    button11.layer.cornerRadius = 8;
    [button11 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button11];
    //6
    UIButton *button12 = [UIButton buttonWithType:UIButtonTypeSystem];
    button12.frame = CGRectMake(123 , 132, 50, 50);
    [button12 setTitle:@"6" forState:UIControlStateNormal];
    [button12 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button12 setShowsTouchWhenHighlighted:YES];
    button12.backgroundColor = [UIColor whiteColor];
    button12.layer.cornerRadius = 8;
    [button12 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button12];
    
    //+
    UIButton *button13 = [UIButton buttonWithType:UIButtonTypeSystem];
    button13.frame = CGRectMake(179 , 132, 50, 50);
    [button13 setTitle:@"+" forState:UIControlStateNormal];
    [button13 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button13 setShowsTouchWhenHighlighted:YES];
    button13.backgroundColor = [UIColor orangeColor];
    button13.layer.cornerRadius = 8;
    [button13 addTarget:self action:@selector(two:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button13];
    
    
    //1
    UIButton *button14 = [UIButton buttonWithType:UIButtonTypeSystem];
    button14.frame = CGRectMake(11 , 188, 50, 50);
    [button14 setTitle:@"1" forState:UIControlStateNormal];
    [button14 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button14 setShowsTouchWhenHighlighted:YES];
    button14.backgroundColor = [UIColor whiteColor];
    //    button5.alpha = 0.3;
    button14.layer.cornerRadius = 8;
    [button14 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button14];
    //2
    UIButton *button15 = [UIButton buttonWithType:UIButtonTypeSystem];
    button15.frame = CGRectMake(67 , 188, 50, 50);
    [button15 setTitle:@"2" forState:UIControlStateNormal];
    [button15 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button15 setShowsTouchWhenHighlighted:YES];
    button15.backgroundColor = [UIColor whiteColor];
    button15.layer.cornerRadius = 8;
    [button15 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button15];
    //3
    UIButton *button16 = [UIButton buttonWithType:UIButtonTypeSystem];
    button16.frame = CGRectMake(123 , 188, 50, 50);
    [button16 setTitle:@"3" forState:UIControlStateNormal];
    [button16 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button16 setShowsTouchWhenHighlighted:YES];
    button16.backgroundColor = [UIColor whiteColor];
    button16.layer.cornerRadius = 8;
    [button16 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button16];
    //0
    UIButton *button17 = [UIButton buttonWithType:UIButtonTypeSystem];
    button17.frame = CGRectMake(11 , 244, 106, 40);
    [button17 setTitle:@"0" forState:UIControlStateNormal];
    [button17 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button17 setShowsTouchWhenHighlighted:YES];
    button17.backgroundColor = [UIColor whiteColor];
    button17.layer.cornerRadius = 8;
    [button17 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button17];
    //.
    UIButton *button18 = [UIButton buttonWithType:UIButtonTypeSystem];
    button18.frame = CGRectMake(123 , 244, 50, 40);
    [button18 setTitle:@"." forState:UIControlStateNormal];
    [button18 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button18 setShowsTouchWhenHighlighted:YES];
    button18.backgroundColor = [UIColor whiteColor];
    button18.layer.cornerRadius = 8;
    [button18 addTarget:self action:@selector(one:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button18];
    
    
    //=
    UIButton *button20 = [UIButton buttonWithType:UIButtonTypeSystem];
    button20.frame = CGRectMake(179 , 188, 50, 96);
    [button20 setTitle:@"=" forState:UIControlStateNormal];
    [button20 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button20 setShowsTouchWhenHighlighted:YES];
    button20.backgroundColor = [UIColor orangeColor];
    button20.layer.cornerRadius = 8;
    [button20 addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:button20];

    
}




-(void)one:(id)sender
{
    //保证是符号时在输入数字时隐藏
    if ([self.string hasPrefix:@"+"]||[self.string hasPrefix:@"-"]||[self.string hasPrefix:@"*"]||[self.string hasPrefix:@"/"])//判断是否为运算符
    {
        [self.string setString:@""];//字符串清零
    }
    [self.string appendString:[sender currentTitle]];//数字连续输入
    //    self.label1.text = [NSString stringWithString:string];
    self.label1.text = [self.label1.text stringByAppendingString:[sender currentTitle]];//将计算公式显示在label1中
    self.label.text=[NSString stringWithString:string];//显示数值
    
    self.num1=[self.label.text doubleValue];//保存输入的数值
    NSLog(@"%f",self.num1);
    
}
-(void)two:(id)sender
{
    
    [self.string setString:@""];//字符串清零
    [self.string appendString:[sender currentTitle]];
    self.label.text=[NSString stringWithString:string];
    self.label1.text = [self.label1.text stringByAppendingString:[sender currentTitle]]; //显示输入的符号
    
    //判断输入是+号
    if ([self.string hasPrefix:@"+"])//hasPrefix:判断字符串以加号开头
    {
        self.num2=self.num1;//将前面的数值保存在num2里
        self.num4=1;
        
    }
    //判断输入是-号
    else if([self.string hasPrefix:@"-"])//hasPrefix:判断字符串以减号开头
    {
        self.num2=self.num1;
        self.num4=2;
    }
    //判断输入是*号
    else if([self.string hasPrefix:@"*"])//hasPrefix:判断字符串以乘号开头
    {
        self.num2=self.num1;
        self.num4=3;
    }
    //判断输入是/号
    else if([self.string hasPrefix:@"/"])//hasPrefix:判断字符串以除号开头
    {
        self.num2=self.num1;
        self.num4=4;
    }
}
-(void)go:(id)sender
{
    //判断输入是+号
    if (self.num4==1)
    {
        self.num3=self.num2+[self.label.text doubleValue];//[self.label.text doubleValue]是每次后输入的数字
        self.label.text=[NSString stringWithFormat:@"%g",self.num3];//显示结果
        //        self.label1.text = [self.label1.text stringByAppendingString:@"="];   //将等于好在label1中显示出来
        self.num1=[self.label.text doubleValue];//为了可以连加。保存结果
        self.label1.text = @"";   //滞空 ，用来存放结果
        self.label1.text = [NSString stringWithFormat:@"%g",self.num3];  //上面显示结果
        self.num3=0;
        [self.string setString:@""];//保证每次结果正确输出后，再次计算，不用按清除键
    }
    //判断输入是-号
    else if(self.num4==2)
    {
        self.num3=self.num2-[self.label.text doubleValue];
        self.label.text=[NSString stringWithFormat:@"%g",self.num3];
        self.label1.text = [self.label1.text stringByAppendingString:@"="];   //将等于好在label1中显示出来
        self.num1=[self.label.text doubleValue];
        self.label1.text = @"";   //滞空 ，用来存放结果
        self.label1.text = [NSString stringWithFormat:@"%g",self.num3];  //上面显示结果
        self.num3=0;
        [self.string setString:@""];
    }
    //判断输入是*号
    else if(self.num4==3)
    {
        self.num3=self.num2*[self.label.text doubleValue];
        self.label.text=[NSString stringWithFormat:@"%g",self.num3];
        self.label1.text = [self.label1.text stringByAppendingString:@"="];   //将等于好在label1中显示出来
        self.num1=[self.label.text doubleValue];
        self.label1.text = @"";   //滞空 ，用来存放结果
        self.label1.text = [NSString stringWithFormat:@"%g",self.num3];  //上面显示结果
        self.num3=0;
        [self.string setString:@""];
    }
    //判断输入是/号
    else if(self.num4 == 4)
    {
        self.num3=self.num2/[self.label.text doubleValue];
        self.label.text=[NSString stringWithFormat:@"%g",self.num3];//计算结果显示出来
        self.label1.text = [self.label1.text stringByAppendingString:@"="];   //将等于好在label1中显示出来
        self.num1=[self.label.text doubleValue];//把计算的结果保存一下
        self.label1.text = @"";   //滞空 ，用来存放结果
        self.label1.text = [NSString stringWithFormat:@"%g",self.num3];  //上面显示结果
        self.num3=0;
        [self.string setString:@""];
    }
}
//当按下清除建时，所有数据清零
-(void)clean:(id)sender{
    [self.string setString:@""];//清空字符串
    self.num3=0;
    self.num2 = 0;
    self.label.text=@"";//保证下次输入时清零
    self.label1.text = @"";
    
}
//返回键
-(void)back:(id)sender
{
    if ([self.label.text length] > 0 && [self.label1.text length] > 0) {
        self.label.text = [self.label.text substringToIndex:[self.label.text length] - 1];
        self.label1.text = [self.label1.text substringToIndex:[self.label1.text length] - 1];
        
    }else if ([self.label.text length] > 0 || [self.label1.text length] > 0){
        //        self.label1.text = [self.label1.text substringToIndex:[self.label1.text length] - 1];
        [self.string setString:@""];
        self.num3=0;
        self.num2 = 0;
        self.label1.text = @"";
        self.label.text=@"";
    }
    self.num1=[self.label.text doubleValue];
    
}

//-(void)clean:(id)sender{
//    [self.string setString:@""];
//    self.num3 = 0;
//    self.num2 = 0;
//    self.label.text = @"0.0";
//    self.label1.text = @"";
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
