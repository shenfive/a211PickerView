//
//  ViewController.swift
//  a211PickerView
//
//  Created by 申潤五 on 2020/11/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
        var bloudType = ["請選擇你的血型","A","B","O","AB"]


    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        
        
    }

    //MARK: pickerView DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return astrological.count
        case 1:
            return bloudType.count
        default:
            return 3
        }
    }
    
    //MARK: pikcerView Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return ""
        }
        
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            print(astrological[row])
        case 1:
            print(bloudType[row])
        default:
            break
        }
        
        if pickerView.selectedRow(inComponent: 0) != 0
            && pickerView.selectedRow(inComponent: 1) != 0{
            print("計算命：\(astrological[pickerView.selectedRow(inComponent: 0)]),\(bloudType[pickerView.selectedRow(inComponent: 1)])")
            
        }else{
            print("還沒選好")
        }
        
        
        
        
        
    }
    
    
}

