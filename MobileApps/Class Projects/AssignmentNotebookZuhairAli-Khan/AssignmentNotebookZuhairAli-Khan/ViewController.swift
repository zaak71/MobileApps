//
//  ViewController.swift
//  AssignmentNotebookZuhairAli-Khan
//
//  Created by Zuhair Ali Kahn 2019 on 3/11/19.
//  Copyright © 2019 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController  {

    @IBOutlet var myTableView: UITableView!
    
    var assignments: [Assignment] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        if !Assignment.loadFromFile().isEmpty{
            assignments = Assignment.loadFromFile()
        }
        else{
            assignments = Assignment.assignments
        }
        navigationItem.leftBarButtonItem = editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments.count
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AssignmentCell", for: indexPath) as! AssignmentTableViewCell
        let assignment = assignments[indexPath.row]
        
        cell.update(assignment: assignment)
        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            assignments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        Assignment.saveToFile(assignments: assignments)
        
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedAssignment = assignments.remove(at: sourceIndexPath.row)
        assignments.insert(movedAssignment, at: destinationIndexPath.row)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "saveUnwind" else{return}
        let sourceViewController = unwindSegue.source as! AddEditAssignmentViewController
        if let assignment = sourceViewController.assignment {
            if let selectedPath = tableView.indexPathForSelectedRow {
                assignments[selectedPath.row] = assignment
                tableView.reloadRows(at: [selectedPath], with: .none)
            }
            else {
                let newIndexPath = IndexPath(row: assignments.count, section: 0)
                assignments.append(assignment)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
        }
        Assignment.saveToFile(assignments: assignments)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editAssignment" {
            let indexPath = tableView.indexPathForSelectedRow!
            let assignment = assignments[indexPath.row]
            let destinationVC = (segue.destination as! UINavigationController).topViewController as! AddEditAssignmentViewController
            destinationVC.assignment = assignment
            
        }
    }
    
}

