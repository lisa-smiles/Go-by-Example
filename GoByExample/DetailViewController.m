//
//  DetailViewController.m
//  GoByExample
//
//  Created by lisa on 16/5/16.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "DetailViewController.h"
#import <MBProgressHUD.h>

@interface DetailViewController ()<UIWebViewDelegate>
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatWebVie];
    [self setNavigationBar];
}

- (void)creatWebVie {
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    NSString *str = [NSString stringWithFormat:@"https://o77s50503.qnssl.com/%@", self.data.id];
    NSURL *url = [NSURL URLWithString:str];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    webView.delegate = self;
    
}

- (void)setNavigationBar {
    
    self.navigationItem.title = self.data.name;
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backButton)];
    self.navigationItem.leftBarButtonItem = item;
    
}

- (void)backButton {
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.activityIndicatorColor = [UIColor lightGrayColor];
    hud.labelText = @"Loading";
    }

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}


//- (void)webViewDidFinishLoad:(UIWebView *)webView;
//- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error;
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
