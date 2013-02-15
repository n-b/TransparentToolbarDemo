//
//  main.m
//  TransparentToolbarDemo
//
//  Created by Nicolas on 14/02/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BOUAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@interface TransparentToolBarViewController : UIViewController
@end

@interface TransparentToolbar : UIToolbar
@end

@implementation TransparentToolbar

+ (void) initialize
{
    [[self appearance] setBackgroundImage:[UIImage new] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [[self appearance] setShadowImage:[UIImage new] forToolbarPosition:UIToolbarPositionAny];
}

@end

#pragma mark -

@implementation BOUAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [TransparentToolBarViewController new];
    return YES;
}

@end

@implementation TransparentToolBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
@end

#pragma mark -

int main(int argc, char *argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([BOUAppDelegate class]));
    }
}
