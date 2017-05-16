//
//  AppDelegate.h
//  Loopshow
//
//  Created by 王乐乐 on 2017/5/16.
//  Copyright © 2017年 Zhihui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

