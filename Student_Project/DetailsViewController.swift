//
//  DetailsViewController.swift
//  Student_Project
//
//  Created by Abdullah Bin Essa on 3/3/24.
//

import UIKit
import SnapKit

class DetailsViewController: UIViewController {

    var student: Student?

    // UI Components
    private let studentNameLabel = UILabel()
    private let studentGPALabel = UILabel()
    private let studentImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayout()
        configureWithStudent()
    }

    private func setupViews() {
        // Configure UI components here
        view.backgroundColor = .white

            studentNameLabel.font = .systemFont(ofSize: 16, weight: .medium)
            studentGPALabel.font = .systemFont(ofSize: 16, weight: .medium)

            // Add the views to the hierarchy
            view.addSubview(studentNameLabel)
            view.addSubview(studentGPALabel)
            view.addSubview(studentImageView)
    }

    private func setupLayout() {
        // Use SnapKit to define the layout
        studentImageView.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
                make.centerX.equalToSuperview()
                make.width.height.equalTo(100)  // Example size, adjust as needed
            }

            studentNameLabel.snp.makeConstraints { make in
                make.top.equalTo(studentImageView.snp.bottom).offset(20)
                make.centerX.equalToSuperview()
            }

            studentGPALabel.snp.makeConstraints { make in
                make.top.equalTo(studentNameLabel.snp.bottom).offset(20)
                make.centerX.equalToSuperview()
            }
    }

    private func configureWithStudent() {
        studentNameLabel.text = "Student Name: \(student?.name ?? "N/A")"
        studentGPALabel.text = "GPA: \(student?.GPA ?? 0.0)"
        studentImageView.image = UIImage(named: student?.profileImage ?? "student image")
    }
}
