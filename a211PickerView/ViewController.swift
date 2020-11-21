//
//  ViewController.swift
//  a211PickerView
//
//  Created by 申潤五 on 2020/11/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource {

    

    

    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        
        
        
    }

    //MARK: pickerView DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 5
        case 1:
            return 8
        default:
            return 0
        }
    }
    
    
    
}

