#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController {
    NSTimer *timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"call ViewController.viewDidLoad()");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"call ViewController.viewWillAppear()");
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"call ViewController.viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"call ViewController.viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"call ViewController.viewDidAppear()");

    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"call ViewController.viewWillDisappear()");

    if (timer != nil) {
        [timer invalidate];
        timer = nil;
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"call ViewController.viewDidDisappear()");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)onTimer:(NSTimer *)timer
{
    NSLog(@"enter ViewController.onTimer()");
}

- (IBAction)pushButton:(id)sender {
    NSLog(@"enter ViewController.pushButton()");
    [self showAlertController];
}

- (void)showAlertController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alert" message:@"ボタンが押されました" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self okButtonPushed];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}

- (void)okButtonPushed {
}
@end
