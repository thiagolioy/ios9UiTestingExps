//
//  FirstTryTests.m
//  FirstTryTests
//
//  Created by Thiago Lioy on 6/16/15.
//  Copyright © 2015 Thiago Lioy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Specta.h>
#import <Expecta.h>

#import "ViewController.h"

@interface ViewController (Private)
@property(nonatomic,strong)UITextField *first;
@property(nonatomic,strong)UITextField *second;
@property(nonatomic,strong)UIButton *connectButton;

@end

SpecBegin(FirstTryTests)

describe(@"FirstTryTests", ^{
    __block ViewController *vc;
    beforeAll(^{
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        vc = (ViewController*)[sb instantiateInitialViewController];
        [vc view];
    });
    
    it(@"should exists", ^{
        expect(vc).toNot.beNil();
    });
    
    it(@"should have a wired first textfield", ^{
        expect(vc.first).toNot.beNil();
    });
    
    it(@"should have a wired second textfield", ^{
        expect(vc.second).toNot.beNil();
    });
    
    it(@"should have textfield delegate wired",^{
        expect(vc.first.delegate).toNot.beNil();
        expect(vc.second.delegate).toNot.beNil();
    });
    
    it(@"should have a wired button textfield", ^{
        expect(vc.second).toNot.beNil();
    });
    
    it(@"should conform to uitextfield delegate", ^{
        expect(vc).conformTo(@protocol(UITextFieldDelegate));
    });
    
    it(@"should respond to uitextfield should return method", ^{
        expect(vc).respondTo(@selector(textFieldShouldReturn:));
    });
});

SpecEnd

