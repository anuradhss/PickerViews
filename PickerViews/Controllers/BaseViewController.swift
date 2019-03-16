//
//  BaseViewController.swift
//  PIckerViews
//
//  Created by Anuradh Caldera on 3/16/19.
//  Copyright © 2019 Anuradh Caldera. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var headTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setheadTitle()
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
        
        view.addSubview(headTitle)
        
        let height = UIScreen.main.bounds.height/10
        
        let headtitleConstratins = [headTitle.leftAnchor.constraint(equalTo: view.leftAnchor),
                                    headTitle.topAnchor.constraint(equalTo: view.topAnchor),
                                    headTitle.rightAnchor.constraint(equalTo: view.rightAnchor),
                                    headTitle.heightAnchor.constraint(equalToConstant: height)]
        NSLayoutConstraint.activate(headtitleConstratins)
    }
}
