//
//  ViewController.h
//  AnnotatorJS-iOSTest
//
//  Created by Russell Quinn on 10/30/14.
//
//

#import <UIKit/UIKit.h>
#import "ExtendedWebView.h"

@interface ViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic, retain) ExtendedWebView *webView;

@end

