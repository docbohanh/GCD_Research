//
//  PickerDataSource.swift
//  GCD_Demo
//
//  Created by MacMini on 10/13/17.
//  Copyright © 2017 Thành Lã. All rights reserved.
//

import UIKit

protocol PickerDataSourceDelegate: class {
    
}

class PickerDataSource: NSObject {
    var dataArray: [Any] = []
    
    weak var delegate: PickerDataSourceDelegate?
    
}


extension PickerDataSource: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataArray[row] as? String
    }
    
}

extension PickerDataSource: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("title row: \(dataArray[row])")
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    
}
