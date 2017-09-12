//
//  ViewController.swift
//  sampleMapKit
//
//  Created by takahiro tshuchida on 2017/09/12.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

//フレームワーク読み込み
import UIKit
//マップ用のフレームワークを記述する必要あり
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        アヤラを中心とした地図を表示
//        1.中心となる場所の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        let coodinate1 = CLLocationCoordinate2DMake(10.293351, 123.908053)
        
        let coodinate2 = CLLocationCoordinate2DMake(10.315212, 123.893011)
        
//        2.縮尺を設定(数字を大きくすると広い範囲、少なくすると狭い範囲)
        let span = MKCoordinateSpanMake(0.1, 0.1)
        
//        3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        
//        4.MapViewに範囲オブジェクトを設定
        myMapView.setRegion(region, animated: true)
        

//        アヤラにピンを立てる
//        1.pinオブジェクトを生成
        let myPin = MKPointAnnotation()
        
        let myPin1 = MKPointAnnotation()
        
        let myPin2 = MKPointAnnotation()
        
////        2.pinの座標を設定
//        myPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        myPin.coordinate = coodinate
        
        myPin1.coordinate = coodinate1
        
        myPin2.coordinate = coodinate2
        
        
//        3.タイトル、サブタイトルを設定
        myPin.title = "アヤラ"
        myPin.subtitle = "おすすめ"
        
        myPin1.title = "ポート・サンペドロ"
        myPin1.subtitle = "おすすめ２"
        
        myPin2.title = "セブドクターズホスピタル"
        myPin2.subtitle = "緊急時"
        
        
//        4.mapViewにピンを追加
        myMapView.addAnnotation(myPin)
        
        myMapView.addAnnotation(myPin1)
        
        myMapView.addAnnotation(myPin2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

