#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"call AppDelegate-didFinishLaunchingWithOptions()");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"call AppDelegate-applicationWillResignActive()");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"call AppDelegate-applicationDidEnterBackground()");
}

- (void):(UIApplication *)application {
    NSLog(@"call AppDelegate-applicationWillEnterForeground()");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"call AppDelegate-applicationDidBecomeActive()");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"call AppDelegate-applicationWillTerminate()");
}

@end
