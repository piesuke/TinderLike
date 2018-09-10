//
//  TinderViewController.swift
//  TinderLIke
//
//  Created by 青野凌介 on 2018/08/23.
//  Copyright © 2018年 青野凌介. All rights reserved.
//

import UIKit
import Koloda

class TinderViewController: UIViewController {

    let items = ["目黒", "世田谷", "代官山", "横浜", "武蔵小杉"]
    let kolodaMainView = KolodaView()
    override func viewDidLoad() {
        super.viewDidLoad()
       kolodaMainView.dataSource = self
        kolodaMainView.delegate = self
        kolodaMainView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        kolodaMainView.center = self.view.center
        self.view.addSubview(kolodaMainView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

extension TinderViewController: KolodaViewDataSource{
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.layer.backgroundColor = UIColor.blue.cgColor
        let label = UILabel()
        label.text = items[index]
        label.textColor = UIColor.white
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
        
        return view
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .fast
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return items.count
    }
}

extension TinderViewController: KolodaViewDelegate{
    
}
