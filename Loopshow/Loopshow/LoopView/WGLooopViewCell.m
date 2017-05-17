//
//  WGLooopViewCell.m
//  Loopshow
//
//  Created by 王乐乐 on 2017/5/17.
//  Copyright © 2017年 Zhihui. All rights reserved.
//

#import "WGLooopViewCell.h"

@implementation WGLooopViewCell
{
    UIImageView *_imageView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        
        [self.contentView addSubview:_imageView];
        
        _imageView.backgroundColor = [UIColor blueColor];
    }
    return self;
}

-(void)setUrl:(NSURL *)url{
    
    _url = url;
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *image = [UIImage imageWithData:data];
    
    _imageView.image = image;
    
}

@end
