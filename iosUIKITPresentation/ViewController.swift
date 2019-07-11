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
    
    @IBAction func actionSkip(_ sender: Any)
    {
        let alertControl = UIAlertController(title: "Alert", message: "Do you want to Skip?", preferredStyle: .alert)
        let actionAdd = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertControl.addAction(actionAdd)
        alertControl.addAction(actionCancel)
        self .present(alertControl , animated: true , completion: nil)
    }
    @IBAction func actionAdd(_ sender: Any)
    {
        let alertControl = UIAlertController(title: "Action Sheet", message: "What Will You Like To Do?", preferredStyle: .actionSheet
        )
        
        let actionAdd = UIAlertAction(title: "Add", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let actionDelete = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alertControl.addAction(actionAdd)
        alertControl.addAction(actionCancel)
        alertControl.addAction(actionDelete)
        
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


 
