//
//  DetailViewController.swift
//  Table view with internal data
//
//  Created by Manish Chaturvedi on 7/20/19.
//  Copyright © 2019 Manish Chaturvedi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image = UIImage()
    var name = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = name
         imageView.image = image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func backbutton(_ sender: Any) {
        
        
    }
    
}
