//
//  ViewController.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import UIKit
import SwiftDate

class ViewController: UIViewController {
    var fileService: FileManagerService?
    var achivementService: AchivmentService?
    
    // MARK:- Private variables
    private(set) var allJsonNamesFromFolder: [String] = []

    private(set) var numberOfSuccessfulThreeDaysRunning: Int? {
        didSet {
            if let newValue = numberOfSuccessfulThreeDaysRunning {
                updateThreeDaysRunningLabel(with: newValue)
            }
        }
    }
    
    private(set) var numberOfWeeksMarathons: Int? {
        didSet {
            if let newValue = numberOfWeeksMarathons {
                updateNumberOfWeeksMarathonsLabel(with: newValue)
            }
        }
    }
    
    private(set) var numberOfCaloriesChallengeCompleted: Int? {
        didSet {
            if let newValue = numberOfCaloriesChallengeCompleted {
                updateNumberOfCaloriesChallengeCompletedLabel(with: newValue)
            }
        }
    }

    // MARK:- UI Components
    private(set) var searchTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter user id here"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .lightGray
        return textField
    }()
    
    private(set) var searchButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .cyan
        button.addTarget(self, action: #selector(onSearchButtonPressed), for: .touchUpInside)
        button.setTitle("Search!", for: .normal)
        return button
    }()
    
    private(set) var numberOfThreeDaysRunningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Number of three days running: –"
        return label
    }()
    
    private(set) var numberOfWeeksMarathonsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Number of 10 km marathons per week: –"
        return label
    }()
    
    private(set) var numberOfCaloriesChallengeCompletedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Number of finished calories challenges: –"
        return label
    }()
    
    // MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureLayout()
        allJsonNamesFromFolder = fileService?.getAllJsonNamesFromFolder() ?? []
    }
    
    // MARK:- Configuration
    private func configureLayout() {
        view.addSubview(searchTextField)
        view.addSubview(searchButton)
        view.addSubview(numberOfThreeDaysRunningLabel)
        view.addSubview(numberOfWeeksMarathonsLabel)
        view.addSubview(numberOfCaloriesChallengeCompletedLabel)

        NSLayoutConstraint.activate([
            searchTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 50),
            
            searchButton.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: 35),
            searchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchButton.widthAnchor.constraint(equalToConstant: 150),
            searchButton.heightAnchor.constraint(equalToConstant: 35),
            
            numberOfThreeDaysRunningLabel.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: 35),
            numberOfThreeDaysRunningLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numberOfThreeDaysRunningLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            numberOfThreeDaysRunningLabel.heightAnchor.constraint(equalToConstant: 35),
            
            numberOfWeeksMarathonsLabel.topAnchor.constraint(equalTo: numberOfThreeDaysRunningLabel.bottomAnchor, constant: 35),
            numberOfWeeksMarathonsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numberOfWeeksMarathonsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            numberOfWeeksMarathonsLabel.heightAnchor.constraint(equalToConstant: 35),
            
            numberOfCaloriesChallengeCompletedLabel.topAnchor.constraint(equalTo: numberOfWeeksMarathonsLabel.bottomAnchor, constant: 35),
            numberOfCaloriesChallengeCompletedLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numberOfCaloriesChallengeCompletedLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            numberOfCaloriesChallengeCompletedLabel.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    // MARK:- Private methods
    private func updateThreeDaysRunningLabel(with value: Int) {
        numberOfThreeDaysRunningLabel.text = "Number of three days running: \(value)"
    }
    
    private func updateNumberOfWeeksMarathonsLabel(with value: Int) {
        numberOfWeeksMarathonsLabel.text = "Number of 10 km marathons per week: \(value)"
    }
    
    private func updateNumberOfCaloriesChallengeCompletedLabel(with value: Int) {
        numberOfCaloriesChallengeCompletedLabel.text = "Number of finished calories challenges: \(value)"
    }
    
    
    // MARK:- Selectors
    @objc func onSearchButtonPressed() {
        onSearchButtonPressedAction()
    }
}

extension ViewController {
    private func onSearchButtonPressedAction() {
        guard searchTextField.text?.isEmpty == false else {
            print("🔥 Text field should not be empty 🔥")
            return
        }
        
        guard !allJsonNamesFromFolder.isEmpty else {
            print("🔥 No JSON files was found 🔥")
            return
        }

        let searchingUserId: String = searchTextField.text ?? ""
        var userTrainings: [UserTrainingDTO] = []
        var allDates: [Date] = []
        var trainingDatesWithCompletedDistances: [Date] = []
        var allDistances: [Double] = []
        
        for json in allJsonNamesFromFolder {
            if let userTrainingItem = fileService?.getDataFromFile(with: json, for: UserTrainingDTO.self) {
                if userTrainingItem.userId == searchingUserId && userTrainingItem.type == .run {
                    userTrainings.append(userTrainingItem)
                }
            }
        }
        
        guard !userTrainings.isEmpty else {
            print("🔥 No records for user id: \(searchingUserId) were found 🔥")
            return
        }
        
        for training in userTrainings.sorted(by: {$0.startDate < $1.startDate}).filter({ ($0.distance ?? 0.0) > 1.0 }) {
            trainingDatesWithCompletedDistances.append(training.startDate)
        }
        
        for training in userTrainings.sorted(by: {$0.startDate < $1.startDate}) {
            allDates.append(training.startDate)
            allDistances.append(training.distance ?? 0.0)
        }

        let uniqueDates = Array(Set(trainingDatesWithCompletedDistances)).sorted()
        numberOfSuccessfulThreeDaysRunning = achivementService?.getNumberOfSuccessfulThreeDaysRunning(from: uniqueDates)
        numberOfWeeksMarathons = achivementService?.getNumberOfTenKilometersMarathonsPerWeek(from: allDates, distances: allDistances)
        numberOfCaloriesChallengeCompleted = achivementService?.getNumberOfTrainingsWithComletedCalories(from: userTrainings)
    }
}
