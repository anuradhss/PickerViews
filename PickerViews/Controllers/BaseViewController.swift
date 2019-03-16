//
//  BaseViewController.swift
//  PIckerViews
//
//  Created by Anuradh Caldera on 3/16/19.
//  Copyright © 2019 Anuradh Caldera. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var mainstoryboard: UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
    var headTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setheadTitle()
        setGesture()
    }
}

//MARK: Set title
extension BaseViewController {
    fileprivate func setheadTitle() {
        headTitle = UILabel()
        headTitle.translatesAutoresizingMaskIntoConstraints = false
        headTitle.textAlignment = .center
        headTitle.adjustsFontSizeToFitWidth = true
        headTitle.minimumScaleFactor = 0.2
        headTitle.text = "Head Title"
        headTitle.backgroundColor = UIColor.black
        headTitle.textColor = UIColor.init(red: 133/255, green: 135/255, blue: 244/255, alpha: 1)
        
        view.addSubview(headTitle)
        
        let height = UIScreen.main.bounds.height/10
        
        let headtitleConstratins = [headTitle.leftAnchor.constraint(equalTo: view.leftAnchor),
                                    headTitle.topAnchor.constraint(equalTo: view.topAnchor),
                                    headTitle.rightAnchor.constraint(equalTo: view.rightAnchor),
                                    headTitle.heightAnchor.constraint(equalToConstant: height)]
        NSLayoutConstraint.activate(headtitleConstratins)
    }
}

//MARK: Add gesture
extension BaseViewController {
    fileprivate func setGesture(){
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipeRightGesture.direction = .right
        view.addGestureRecognizer(swipeRightGesture)
    }
}

//MARK: Gesture Target
extension BaseViewController {
    @objc func swipeRight() {
        print("working guesture")
    }
}
