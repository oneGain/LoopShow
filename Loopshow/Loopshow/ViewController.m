//
//  ViewController.m
//  Loopshow
//
//  Created by 王乐乐 on 2017/5/16.
//  Copyright © 2017年 Zhihui. All rights reserved.
//

#import "ViewController.h"
#import "WGLoopView.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSArray <NSURL *> *_urls;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadData];
    WGLoopView *loopView = [[WGLoopView alloc]initWithURLs:_urls];
    loopView.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 200);
    
    [self.view addSubview:loopView];
    
}


- (void)loadData {
   
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (int i = 0; i < 3; i++) {
        
        NSString *fileName = [NSString stringWithFormat:@"%02d.jpg",(i + 1)];
        
        NSURL *fileUrl = [[NSBundle mainBundle] URLForResource:fileName withExtension:nil];
        
        [arrayM addObject:fileUrl];
        
    }
    
    _urls = arrayM.copy;
    
}


@end
