//
//  ViewController.swift
//  MoveCells
//
//  Created by Mohan K on 28/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    
    @IBOutlet weak var table: UITableView!
    
    var models = [
        "one",
        "two",
        "three",
        "four",
        "five",
        "six"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.delegate =  self
        table.dataSource =  self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text =  models[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Times New Roman", size: 20)
        return cell
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        models.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    @IBAction func didTapSort() {
        if table.isEditing {
            table.isEditing = false
        }
        else {
            table.isEditing = true
        }
    }
}

