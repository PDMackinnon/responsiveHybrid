//
//  DJViewController.h
//  foundation1
//
//  Created by Paul Mackinnon on 31/01/2014.
//  Copyright (c)  2014 Dundee University. All rights reserved.

#import <UIKit/UIKit.h>

@interface DJViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@end
