//
//  ViewController.m
//  LatexExample
//
//  Created by Netban on 2019/2/1.
//  Copyright © 2019年 scn. All rights reserved.
//

#import "ViewController.h"
#import "LatexWebView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = [[NSBundle mainBundle] pathForResource:@"File" ofType:@"txt"];
    
    NSData *data = [NSData dataWithContentsOfFile:string];
    NSString *htmlStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    LatexWebView *webView = [[LatexWebView alloc] initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width ,[UIScreen mainScreen].bounds.size.height) HTMLString:htmlStr];
    [self.view addSubview:webView];
}


@end
