//
//  ViewController.m
//  l_210_ArrayFun
//
//  Created by Hongbo Niu on 2017-10-15.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // NSArray *arr = [[NSArray alloc]init];
    //Do not use this way because NSArray cannot be modified after initialization.
    
    
    //arr[0] = str; XXX wrong

    NSArray *arr = [NSArray arrayWithObjects:@"My", @"look", @"does", nil];
    
    NSLog(@"The second element: %@", arr[1]);
    
    NSMutableArray *mut = [NSMutableArray arrayWithObjects:@"Mutable", @"Array", @"being", @"under", @"test", nil];
    //NSLog(@"The second element: %@", mut[2]);
    NSLog(@"Mut original: %@", mut.debugDescription);
    [mut removeObjectAtIndex:2];
    //NSLog(@"The second element: %@", arr[2]);
    [mut addObject:@"Beast Monster"];
    NSLog(@"Mut modified: %@", mut.debugDescription);
    
    NSArray *arr2 = @[@"Donkey", @"Kong", @"Ate", @"Test"];
    
    NSString *str = [arr2 objectAtIndex:2];
    
    arr2 = @[@"replace", @"Array"]; // Works??? surprising. Memory leak?
    
    //Create a new array initialized with the elements of another array.
    NSArray *arr3 = [NSArray arrayWithArray:arr2];
    
    NSArray *arr4 = mut; //Can use mutable array to initialize NSArray
    
    //NSMutableArray *arr5 = arr3;         // incompatible pointers
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
