//
//  ViewController.swift
//  Generic_PickerView
//
//  Created by Peter Bassem on 6/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    let pickerView = UIPickerView()
    let data = ["Test1", "Test2", "Test3", "Test4"]
    var picker: PickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.inputView = pickerView
        
        picker = PickerView(models: data, itemSelection: { (item) in
            self.textField.text = item
            self.textField.endEditing(true)
        })
        
        pickerView.dataSource = picker
        pickerView.delegate = picker
    }
}

//extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return data.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return data[row]
//    }
//}
