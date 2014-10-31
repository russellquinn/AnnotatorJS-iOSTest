//
//  ExtendedWebView.m
//  AnnotatorJS-iOSTest
//
//  Created by Russell Quinn on 10/30/14.
//
//

#import "ExtendedWebView.h"

@implementation ExtendedWebView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self != nil)
    {
        NSMutableArray *extraItems = [[NSMutableArray alloc] init];
        UIMenuItem *highlightItem = [[UIMenuItem alloc] initWithTitle:@"Highlight" action:@selector(highlight:)];
        [extraItems addObject:highlightItem];
        [UIMenuController sharedMenuController].menuItems = extraItems;
    }
    
    return self;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(highlight:))
    {
        return YES;
    }
    
    return [super canPerformAction:action withSender:sender];
}
         
- (void)highlight:(id)sender
{
    [self stringByEvaluatingJavaScriptFromString:@"$('.annotator-add').trigger('tap');$('.annotator-save').submit();"];
}

@end
