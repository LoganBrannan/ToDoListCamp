//
//  CompletedToDoViewController.swift
//  ToDoListCamp
//
//  Created by Logan Brannan on 6/23/20.
//  Copyright © 2020 Logan Brannan. All rights reserved.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    
    var previousVc = ToDoTableViewController()
    var selectedToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    
    
  
   

}
