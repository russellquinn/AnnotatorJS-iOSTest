//
//  ViewController.m
//  AnnotatorJS-iOSTest
//
//  Created by Russell Quinn on 10/30/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView = [[ExtendedWebView alloc] initWithFrame:self.view.bounds];
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.webView.delegate = self;
    self.webView.scalesPageToFit = NO;
    self.webView.dataDetectorTypes = UIDataDetectorTypeNone;
    self.webView.userInteractionEnabled = YES;
    [self.view addSubview:self.webView];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"example" ofType:@"html"];
    NSString *htmlContents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    [self.webView loadHTMLString:htmlContents baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end