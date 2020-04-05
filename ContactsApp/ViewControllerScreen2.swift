//
//  ViewControllerScreen2.swift
//  ContactsApp
//
//  Created by Macbook on 4/5/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewControllerScreen2: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    let ContactsList=[
        ["Hieu","Hoa","Hoai"],
        ["Mai","Minh"],
        ["Thanh","Tien","Thao"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource=self
//        ContactsList=["Thanh Thanh","Hai Tien","Nguyen Hieu","Le Ba Hoai","Phuong Mai"]
//        ContactsList.sort()
        // Do any additional setup after loading the view.
    }
    
    
}
extension ViewControllerScreen2:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return ContactsList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var str=ContactsList[section][ContactsList[0].startIndex]
        return String(str[str.startIndex])
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! UITableViewCell
        cell.textLabel?.text=ContactsList[indexPath.section][indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ContactsList[section].count
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


