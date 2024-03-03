//
//  ViewController.swift
//  Student_Project
//
//  Created by Abdullah Bin Essa on 3/3/24.
//

import UIKit
import SnapKit


class ViewController: UITableViewController  {
    
    //var students = ["Abdullah", "Omar","Mo"]
    
    var students: [Student] = [Student(name: "Abdullah", GPA: 3.185, profileImage: "Abdullah"),Student(name: "Omar", GPA: 3.85, profileImage: "Abdullah"), Student(name: "Mo", GPA: 3.44, profileImage: "Abdullah")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let student = students[indexPath.row]

        cell.textLabel?.text = "Student: \(student.name) - GPA: \(student.GPA)"
        cell.imageView?.image = UIImage(named: student.profileImage)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Implementation will go here
        
        let detailVC = DetailsViewController()
        let selectedStudent = students[indexPath.row]
        detailVC.student = selectedStudent
        
        navigationController?.pushViewController(detailVC, animated: true)

    }


}

