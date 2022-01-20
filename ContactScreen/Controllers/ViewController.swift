//
//  ViewController.swift
//  ContactScreen
//
//  Created by Admin on 19/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactTableView: UITableView!
    var name = ["Alex Bartley","Alessandro","Bill Anderson","Bexley Kournikovas","Bruce Bellard","David"]
    override func viewDidLoad() {
        super.viewDidLoad()
     let nibFile = UINib(nibName: "ContactTableViewCell", bundle: nil)
        self.contactTableView.register(nibFile, forCellReuseIdentifier: "ContactTableViewCell")
        let nibFile1 = UINib(nibName: "ContactTableViewCell1", bundle: nil)
           self.contactTableView.register(nibFile1, forCellReuseIdentifier: "ContactTableViewCell1")
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else{
            return name.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        if let cell = contactTableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell{
            return cell
        }
       
    }
        else{
            
            if let cell = contactTableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell1", for: indexPath) as? ContactTableViewCell1{
                if indexPath.row%2 == 0  {
                    cell.backgroundColor = #colorLiteral(red: 0.9725244641, green: 0.9724023938, blue: 0.9807130694, alpha: 1)
                    cell.nameLabel.text = name[indexPath.row]
                }
                else{
                    cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                    cell.nameLabel.text = name[indexPath.row]
                }
                
                return cell
            }
        }
    
        return UITableViewCell()
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as? NextViewController{
            self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
}
}
