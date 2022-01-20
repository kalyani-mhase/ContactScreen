//
//  NextViewController.swift
//  ContactScreen
//
//  Created by Admin on 19/01/22.
//

import UIKit

class NextViewController: UIViewController {
    var name1  = ["FaceTime","Notes","Share contact","Add to contact","Share My Location"]
    var img = ["i1","","","",""]
    var img1 = ["i2","","","",""]
    
    
    @IBOutlet weak var contactTableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibFile1 = UINib(nibName: "ContactTableViewCell1", bundle: nil)
           self.contactTableView2.register(nibFile1, forCellReuseIdentifier: "ContactTableViewCell1")
        let nibFile2 = UINib(nibName: "NextTableViewCell", bundle: nil)
           self.contactTableView2.register(nibFile2, forCellReuseIdentifier: "NextTableViewCell")
     
     
    }
    

}
extension NextViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else{
           return name1.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            if let cell = contactTableView2.dequeueReusableCell(withIdentifier: "NextTableViewCell", for: indexPath) as? NextTableViewCell{
                return cell
            }
        }
        else{
            if let cell = contactTableView2.dequeueReusableCell(withIdentifier: "ContactTableViewCell1", for: indexPath) as? ContactTableViewCell1{
                if indexPath.row == 0{
                    cell.nameLabel.text = name1[indexPath.row]
                   // cell.img1.image = UIImage(named: img[indexPath.row])
                    cell.img2.image = UIImage(named: img1[indexPath.row])
                    cell.backgroundColor = #colorLiteral(red: 0.9725244641, green: 0.9724023938, blue: 0.9807130694, alpha: 1)
                    cell.img2.image = UIImage(systemName: "phone.circle")
                    cell.img1.image = UIImage(systemName: "video.circle")
                
            }
                else if indexPath.row == 1{
                    cell.nameLabel.text =  name1[indexPath.row]
                    cell.accessoryType = .disclosureIndicator
                    cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                }
                else if indexPath.row == 2 {
                    cell.nameLabel.text =  name1[indexPath.row]
                    cell.nameLabel.textColor = UIColor.tintColor
                    cell.backgroundColor = #colorLiteral(red: 0.9725244641, green: 0.9724023938, blue: 0.9807130694, alpha: 1)
                }
                else if indexPath.row == 3{
                    cell.nameLabel.text =  name1[indexPath.row]
                    cell.nameLabel.textColor = UIColor.tintColor
                    cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                }
                else{
                    cell.nameLabel.text =  name1[indexPath.row]
                    cell.nameLabel.textColor = UIColor.tintColor
                    cell.backgroundColor = #colorLiteral(red: 0.9725244641, green: 0.9724023938, blue: 0.9807130694, alpha: 1)
                }
                return cell
            }
            
        }
        return UITableViewCell()
    }
    
    
}
