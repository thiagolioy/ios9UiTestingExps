//
//  FirstTryUITests.m
//  FirstTryUITests
//
//  Created by Thiago Lioy on 6/16/15.
//  Copyright © 2015 Thiago Lioy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import <Specta.h>
#import <Expecta.h>

SpecBegin(FirstTryUITests)

describe(@"FirstTryUITests", ^{
   beforeAll(^{
       self.continueAfterFailure = NO;
   });

   beforeEach(^{
     [[[XCUIApplication alloc] init] launch];
   });
    
   it(@"should perform first uitesting", ^{
       XCUIApplication *app = [[XCUIApplication alloc] init];
       XCUIElement *firstTextTextField = app.textFields[@"First Text"];
       [firstTextTextField tap];
       [firstTextTextField typeText:@"Primeiro Teste"];
       
       XCUIElement *secondTextTextField = app.textFields[@"Second Text"];
       [secondTextTextField tap];
       [secondTextTextField typeText:@"Segundo Teste"];
       [app.buttons[@"Conect Right Now"] tap];
   });

});

SpecEnd