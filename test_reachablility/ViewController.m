//
//  ViewController.m
//  test_reachablility
//
//  Created by wangyuhong2267 on 17/6/29.
//  Copyright © 2017年 wangyuhong2267. All rights reserved.
//
#import "Reachability.h"
#import "ViewController.h"

@interface ViewController (){
	Reachability* reach;
}

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//reach = [Reachability reachabilityWithHostname:@"www.google.com"];
	NSLog(@"dddddd!");
	//reach = [Reachability reachabilityWithHostname:@"www.apple.com"];
	reach = [Reachability reachabilityWithHostname:@"www.hb3344dsfdfdfdf.com"];
	
	
	
	NSThread * backgroundThread = [[NSThread alloc] initWithTarget:self
														  selector:@selector(loadDataFromServerWithURL:)
															object:NULL];
	[backgroundThread start];
	
	
	
	
}
- (void)loadDataFromServerWithURL:(NSURL *)url
{
	while (1) {
		NSLog(@"loadDataFromServerWithURL...");
		NetworkStatus status = [reach currentReachabilityStatus];
		NSLog(@"status=%d",status);
		[NSThread sleepForTimeInterval:1.0f];
	}
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
