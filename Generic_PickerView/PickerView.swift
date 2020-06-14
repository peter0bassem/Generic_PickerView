//
//  PickerView.swift
//  Generic_PickerView
//
//  Created by Peter Bassem on 6/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class PickerView: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    typealias ItemSelector = (_ model: String) -> Void
    
    private var models: [String]
    private let itemSelection: ItemSelector
    
    init(models: [String], itemSelection: @escaping ItemSelector) {
        self.models = models
        self.itemSelection = itemSelection
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return models.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return models[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        itemSelection(models[row])
    }
}
