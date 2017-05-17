//
//  WGLoopView.m
//  Loopshow
//
//  Created by 王乐乐 on 2017/5/16.
//  Copyright © 2017年 Zhihui. All rights reserved.
//

#import "WGLoopView.h"
#import "WGLoopViewLayout.h"
#import "WGLooopViewCell.h"
static NSString * const WGLoopViewCellId = @"WGLoopViewCellId";

@interface WGLoopView ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end


@implementation WGLoopView
{
    NSArray <NSURL *> * _urls;
}

- (instancetype)initWithURLs:(NSArray <NSURL *> *)urls
{
    self = [super initWithFrame:CGRectZero collectionViewLayout:[WGLoopViewLayout new]];
    if (self) {
        _urls = urls;
        
        self.dataSource = self;
        self.delegate   = self;
        [self registerClass:[WGLooopViewCell class] forCellWithReuseIdentifier:WGLoopViewCellId];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:_urls.count *10 inSection:0];
            
            [self scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:NO];
            
        });
        
        
    }
    return self;
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _urls.count *20;
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    WGLooopViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:WGLoopViewCellId forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0  blue:arc4random_uniform(256)/255.0  alpha:1.0];
    
    cell.url = _urls[indexPath.item % _urls.count];
    
    return cell;
}



-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    
    NSInteger offset =  scrollView.contentOffset.x / scrollView.bounds.size.width;
    
    if (offset == 0 || offset == ([self numberOfItemsInSection:0]-1)) {
        
        
        if (offset == 0) {
            offset = _urls.count;
            
        }else{
            offset = _urls.count-1;
        }
        [ scrollView setContentOffset:CGPointMake(offset*scrollView.bounds.size.width,0) ];

        
    }
    
    
    
}
@end
