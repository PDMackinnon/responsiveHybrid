//
//  DJViewController.m
//  foundation1
//
//  Created by Paul Mackinnon on 31/01/2014.
//  Copyright (c)  2014 Dundee University. All rights reserved.


#import "DJViewController.h"

@interface DJViewController ()

@end

@implementation DJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"foundation responsive"];

  //  NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];

    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:fileURL];
    
    NSLog(@"%@",fileURL);
    
    [self.mainWebView loadRequest:request];
    [self.mainWebView.scrollView setScrollEnabled: YES];
    
    [[self mainWebView] setDelegate:self];
    
    

    
}


-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    
    
    
    if (navigationType == UIWebViewNavigationTypeLinkClicked) {
        NSLog(@"%@",[request URL]);
        
        
        NSString *link = [[request URL] host];
        NSLog(@"%@",link);
        
        if ([link isEqualToString:@"pacman"] == YES) {
            [self performSegueWithIdentifier:@"pacPush" sender:nil];
        }
        
        else if ([link isEqualToString:@"leaves"] == YES) {
            [self performSegueWithIdentifier:@"leavesPush" sender:nil];

        }
        
        
        
        
        return NO; //i.e. do not navigate to new page
    }
    else
    {
        
        return YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
