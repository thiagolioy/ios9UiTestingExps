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

SpecBegin(FirstTryTests)

describe(@"FirstTryTests", ^{
   it(@"will generate coverage ? ", ^{
       expect(1).to.equal(1);
   });
    
    
    
    it(@"will generate coverage ? ", ^{
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UIViewController *vc = [sb instantiateInitialViewController];
        expect(vc).toNot.beNil();
    });
    
    it(@"will call memory warning", ^{
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UIViewController *vc = [sb instantiateInitialViewController];
        [vc didReceiveMemoryWarning];
        expect(1).to.equal(1);
    });
});

SpecEnd

