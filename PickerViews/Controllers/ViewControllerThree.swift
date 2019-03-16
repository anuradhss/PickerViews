//
//  ViewControllerThree.swift
//  PIckerViews
//
//  Created by Anuradh Caldera on 3/16/19.
//  Copyright © 2019 Anuradh Caldera. All rights reserved.
//

/*
 WARNING: YOU ARE IN A EXPERIMENT SECTION, TRIED TO CHANGE EACH ROW HIEGHT OF THE COMPONENT. DIFFERENT VALUE IS SET
 EACH TIME BUT DIDN'T WORK. FEEL FREE TO SOLVE THIS.
*/

import UIKit

class ViewControllerThree: BaseViewController {

    private var dynamicpickerView: UIPickerView!
    private var titles: [String] = ["one", "two", "three", "four","five"]
    var rowcount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        headTitle.text = "⌦  DIFFRENT ROW HEIGHTS: DIDN'T WORK ☹️"
        setPickerView()
    }
}

//MARK: Setup PickerView
extension ViewControllerThree {
    fileprivate func setPickerView() {
        dynamicpickerView = UIPickerView()
        dynamicpickerView.translatesAutoresizingMaskIntoConstraints = false
        dynamicpickerView.delegate = self
        dynamicpickerView.dataSource = self
        view.addSubview(dynamicpickerView)
        
        let pickerviewConstratins = [dynamicpickerView.leftAnchor.constraint(equalTo: view.leftAnchor),
                                     dynamicpickerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     dynamicpickerView.rightAnchor.constraint(equalTo: view.rightAnchor),
                                     dynamicpickerView.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height/40)]
        NSLayoutConstraint.activate(pickerviewConstratins)
    }
}

//MARK: Implement PickerView Delegate and Datasource methods
extension ViewControllerThree: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return titles[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        let height = UIScreen.main.bounds.height/20
        rowcount = rowcount + 1
        return height * CGFloat(rowcount)
    }
}

//MARK: Go Back
extension ViewControllerThree {
    override func swipeRight() {
        self.dismiss(animated: true, completion: nil)
    }
}


