//
//  ViewController.swift
//  UIPickerViewRowHeight
//
//  Created by Anuradh Caldera on 3/16/19.
//  Copyright © 2019 Anuradh Caldera. All rights reserved.
//

/*
 THIS IS A SIMPLE PICKER VIEW : SEE OTHERS FOR DIFFERENT PICKER VIEWS
*/

import UIKit

class ViewControllerOne: BaseViewController {
    
    private var pickerView: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setPickerView()
    }
}

//MARK: Setup PickerView
extension ViewControllerOne {
    fileprivate func setPickerView() {
        pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.delegate = self
        pickerView.dataSource = self
        view.addSubview(pickerView)
        
        let pickerviewConstratins = [pickerView.leftAnchor.constraint(equalTo: view.leftAnchor),
                                     pickerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     pickerView.rightAnchor.constraint(equalTo: view.rightAnchor),
                                     pickerView.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height/40)]
        NSLayoutConstraint.activate(pickerviewConstratins)
    }
}

//MARK: Implement PickerView Delegate and Datasource methods
extension ViewControllerOne: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "hello \(row)"
    }
}
