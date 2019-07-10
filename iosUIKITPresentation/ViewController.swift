//
//  ViewController.swift
//  iosUIKITPresentation
//
//  Created by MacStudent on 2019-07-09.
//  Copyright © 2019 tarlochan5268. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    
    @IBAction func actionAdd(_ sender: Any)
    {
        let alertControl = UIAlertController(title: "Action Sheet", message: "Go To Next Screen", preferredStyle: .actionSheet
        )
        
        let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertControl.addAction(actionOk)
        alertControl.addAction(actionCancel)
        
        self .present(alertControl , animated: true , completion: nil)
        
        
    }
    
    var groupArray : [String] = ["1","2","3","4","5","6","7","8","9"]
    @IBOutlet weak var PickerGroup: UIPickerView!
    override func viewDidLoad()
    {
        self.PickerGroup.delegate = self
        self.PickerGroup.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return groupArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return self.groupArray[row]
    }

}


 
