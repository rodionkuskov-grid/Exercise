//
//  AchivementService.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

class AchivmentServiceImpl: AchivmentService {

    // MARK:- Task number 1
    func getNumberOfSuccessfulThreeDaysRunning(from dates: [Date]) -> Int {
        var tempCounter: Int = 1
        var successCounter: Int = 0
        
        for index in 1 ... dates.count - 1 {
            let diff = daysBetween(start: dates[index], end: dates[index - 1])
            if abs(diff) == 1 {
                tempCounter += 1
                if tempCounter == 3 {
                    successCounter += 1
                    tempCounter = 0
                }
            } else {
                tempCounter = 0
            }
        }
        
        return successCounter
    }
    
    // MARK:- Task number 2
    func getNumberOfTenKilometersMarathonsPerWeek(from dates: [Date], distances: [Double]) -> Int {
        var successCounter: Int = 0
        for index in 0 ... dates.count - 1 {
            if (dates[index].getWeekDay() == .monday) {
                let endOfWeek = dates[index].dateByAdding(6, .day).date
                let range = dates[index]...endOfWeek
                if range.contains(dates[index + 1]) {
                    if (distances[index] + distances[index + 1] > 10.0) {
                        successCounter += 1
                    }
                }
            }
        }
        
        return successCounter
    }
    
    // MARK:- Task number 3 – get number of trainings when user burned more than 500 calories per training
    func getNumberOfTrainingsWithComletedCalories(from trainings: [UserTrainingDTO]) -> Int {
        return trainings.filter { $0.calories ?? 0.0 >= 500.0 }.count
    }
}

extension AchivmentServiceImpl {
    func daysBetween(start: Date, end: Date) -> Int {
       Calendar.current.dateComponents([.day], from: start, to: end).day!
    }
}
