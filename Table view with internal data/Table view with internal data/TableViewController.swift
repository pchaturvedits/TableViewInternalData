//
//  TableViewController.swift
//  Table view with internal data
//
//  Created by Manish Chaturvedi on 7/17/19.
//  Copyright © 2019 Manish Chaturvedi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
    
    
    var days = ["Bird", "Jerry", "Mickey", "Jungle" ,"Penguin", "Panda", "Tweety"]
    
    var character: [UIImage] = [#imageLiteral(resourceName: "bird"),#imageLiteral(resourceName: "jerry"),#imageLiteral(resourceName: "mickey"),#imageLiteral(resourceName: "jungle"), #imageLiteral(resourceName: "penguin"),#imageLiteral(resourceName: "Panda"), #imageLiteral(resourceName: "Tweety")]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

  

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return days.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "array", for: indexPath) as! TableViewCell
        
        cell.nameLbl.text = days[indexPath.item]
        
        cell.charImage.image = character[indexPath.item]
      
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController")as! DetailViewController
        vc.image = character[indexPath.item]
        vc.name = days[indexPath.item]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
