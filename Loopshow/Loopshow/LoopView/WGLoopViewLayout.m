//
//  WGLoopViewLayout.m
//  Loopshow
//
//  Created by 王乐乐 on 2017/5/17.
//  Copyright © 2017年 Zhihui. All rights reserved.
//

#import "WGLoopViewLayout.h"

@implementation WGLoopViewLayout

-(void)prepareLayout{
    [super prepareLayout];
    
    NSLog(@"%@",self.collectionView);
    
    //直接利用collectionView 的属性设置布局
    self.itemSize = self.collectionView.bounds.size;
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView.bounces = NO;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;

}
@end
