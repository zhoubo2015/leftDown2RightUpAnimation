//
//  AppDelegate.m
//  leftDown2RightUpAnimation
//
//  Created by ZhouDamon on 16/1/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondViewController.h"
//[ViewController.swift:37]
#define FILENAME ［NSString stringWithFormat:(@"%@", __FILE__.lastPathComponent)］
#define filelog(){NSString *str = [NSString stringWithFormat:@"%s", __FILE__];return str.lastPathComponent;}
#define sum(b,c){int d=0;d=b+c;printf("两者的和:%d\n",d);}
#define RunTheFunction(func)\
{\
if(ERROR == (func))\
{\
printf("%s : error!\n");\
getchar();\
return ERROR;\
}\
}
#define GSLog_INFO(format, ...)     NSLog(@"[INFO] [%@:%d] {%s} " format, [NSString stringWithFormat:@"%s", __FILE__].lastPathComponent, __LINE__, __FUNCTION__,##__VA_ARGS__)
#define GSLog_INFO111(format, ...)     NSLog(@"[INFO]%@" format, [NSString stringWithFormat:@"%s", __FILE__].lastPathComponent, ##__VA_ARGS__)
#define logMessage(message) printf("\(__FILE__.lastPathComponent):\(__LINE__) \(__LINE__):\r\(message)")

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    SecondViewController *vc = [[SecondViewController alloc] init];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];

    self.window.rootViewController = nvc;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
