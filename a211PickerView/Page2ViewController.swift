//
//  Page2ViewController.swift
//  a211PickerView
//
//  Created by 申潤五 on 2020/11/28.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    var bld = ""
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("page2")
        label1.text = bld
        label2.text = str
        
    }
    

}
