//
//  RootViewController.swift
//  PIckerViews
//
//  Created by Anuradh Caldera on 3/16/19.
//  Copyright © 2019 Anuradh Caldera. All rights reserved.
//

import UIKit

class RootViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        headTitle.text = "✪ WELCOME TO PICKERVIEWS ✪"
        setButtons()
    }
}

extension RootViewController {
    fileprivate func setButtons() {
        for i in 0...2 {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.tag = i
            var buttontitle = ""
            switch i {
            case 0:
                buttontitle = "Simple PickerView"
            case 1:
                buttontitle = "PickerView With Change Row Height"
            case 2:
                buttontitle = "Different Row Heigh: Experiment ☹️"
            default:
                return
            }
            
            button.setTitle("\(buttontitle)", for: .normal)
            button.backgroundColor = UIColor.black
            button.setTitleColor(UIColor.white, for: .normal)
            
            view.addSubview(button)
            
            let buttonTopAnchtor = (UIScreen.main.bounds.height/10) * CGFloat(i) * CGFloat(1.5) + UIScreen.main.bounds.height/10 + 20
            let buttonHeight = UIScreen.main.bounds.height/10
            let buttonWidth = UIScreen.main.bounds.width * 9/10
            
            let buttonConstraints = [button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     button.topAnchor.constraint(equalTo: view.topAnchor, constant: buttonTopAnchtor),
                                     button.widthAnchor.constraint(equalToConstant: buttonWidth),
                                     button.heightAnchor.constraint(equalToConstant: buttonHeight)]
            NSLayoutConstraint.activate(buttonConstraints)
            button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        }
    }
}

extension RootViewController {
    @objc fileprivate func buttonAction(_ sender: UIButton) {
        
        var viewcontroller: UIViewController!
        
        switch sender.tag {
        case 0:
            viewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewControllerOne")
        case 1:
            viewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewControllerTwo")
        case 2:
            viewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewControllerThree")
        default:
            return
        }
        
        DispatchQueue.main.async {
            self.present(viewcontroller, animated: true, completion: nil)
        }
        
    }
}
