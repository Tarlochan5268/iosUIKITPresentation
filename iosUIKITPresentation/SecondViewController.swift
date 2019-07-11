//
//  SecondViewController.swift
//  iosUIKITPresentation
//
//  Created by MacStudent on 2019-07-09.
//  Copyright © 2019 tarlochan5268. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrayStudents = ["Tarlochan","Kishore","Nikhil","Tarlochan","Kishore","Nikhil","Tarlochan","Kishore","Nikhil","Tarlochan","Kishore","Nikhil","Tarlochan","Kishore","Nikhil","Tarlochan","Kishore","Nikhil"]
    @IBOutlet weak var tblDummy: UITableView!
    
    override func viewDidLoad()
    {
        self.tblDummy.delegate = self
        self.tblDummy.dataSource = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        cell.textLabel?.text = self.arrayStudents[indexPath.row]
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
