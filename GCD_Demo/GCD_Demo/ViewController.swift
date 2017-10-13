//
//  ViewController.swift
//  GCD_Demo
//
//  Created by MacMini on 10/12/17.
//  Copyright © 2017 Thành Lã. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerDataSource: PickerDataSource!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPickerView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupPickerView() {
        pickerDataSource = PickerDataSource()
        pickerDataSource.dataArray = (1...100).map { "Row " + String($0) }
        
        pickerView.dataSource = pickerDataSource
        pickerView.delegate = pickerDataSource
        
    }

}
