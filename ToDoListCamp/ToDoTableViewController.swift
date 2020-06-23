//
//  ToDoTableViewController.swift
//  ToDoListCamp
//
//  Created by Logan Brannan on 6/22/20.
//  Copyright © 2020 Logan Brannan. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
     
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         let toDo = toDos[indexPath.row]

        if toDo.important {
           cell.textLabel?.text = "❗️" + toDo.name
         } else {
           cell.textLabel?.text = toDo.name
         }
        
        return cell
    }

 override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

   // this gives us a single ToDo
   let toDo = toDos[indexPath.row]

   performSegue(withIdentifier: "moveToComplete", sender: toDo)
 }

  
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let addVC = segue.destination as? AddToDoViewController {
         addVC.previousVC = self
       }
        
        if let completeVC = segue.destination as? CompletedToDoViewController { if let toDo = sender as? ToDo {
                   completeVC.selectedToDo = toDo
                   completeVC.previousVc = self
    }
  
    
  
         
       
          }
     }
     }

/*
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
         if let addVC = segue.destination as? AddToDoViewController {
           addVC.previousVC = self
         }
 */
 
