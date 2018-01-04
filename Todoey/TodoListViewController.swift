//
//  ViewController.swift
//  Todoey
//
//  Created by iOS Swift on 1/4/18.
//  Copyright © 2018 Shyam Patel. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    
    let itemArray = ["Find Mike", "Buy Eggos", "Dig Holes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK - Tableview Datasource Methods
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delagate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {          
        
            if         tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
                tableView.cellForRow(at: indexPath)?.accessoryType = .none

            } else {
                tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            }
        
            tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
}

