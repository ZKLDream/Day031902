//
//  ViewController.m
//  Day031902
//
//  Created by 千锋 on 16/3/19.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import "ViewController.h"
#import <MAMapKit/MAMapKit.h>

@interface ViewController ()<MAMapViewDelegate>
{
    MAMapView *_mapView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mapView=[[MAMapView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    //设置地图视角(带动画)
    [_mapView setCameraDegree:45 animated:YES duration:2];
    //显示交通
//    _mapView.showTraffic=YES;
    //地图显示类型
    _mapView.mapType=MAMapTypeStandard;
    
    _mapView.showsUserLocation=YES;
    _mapView.delegate=self;
    [self.view addSubview:_mapView];
    
    
}

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation{
    NSLog(@"用户位置改变");
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
