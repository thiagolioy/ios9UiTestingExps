//
//  ViewController.m
//  FirstTry
//
//  Created by Thiago Lioy on 6/16/15.
//  Copyright © 2015 Thiago Lioy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property(nonatomic,strong)IBOutlet UITextField *first;
@property(nonatomic,strong)IBOutlet UITextField *second;
@property(nonatomic,strong)IBOutlet UIButton *connectButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)connectButtonAction{
    [_first resignFirstResponder];
    [_second resignFirstResponder];
}

@end
