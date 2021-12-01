//
//  UserTrainingDTO.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

struct UserTrainingDTO: Codable {
    enum TrainigType: String, Codable {
        case run = "run"
        case cycle = "cycle"
        case training = "training"
    }
    
    let userId: String
    var type: TrainigType
    let distance: Double?
    let calories: Double?
    let startDateRaw: String
    let endDateRaw: String
    
    var startDate: Date {
        if let cuttedDateString = cutRawDate(from: startDateRaw) {
            return dateFormatter.date(from: cuttedDateString) ?? Date()
        }

        return Date()
    }
    
    var endDate: Date {
        if let cuttedDateString = cutRawDate(from: endDateRaw) {
            return dateFormatter.date(from: cuttedDateString) ?? Date()
        }

        return Date()
    }

    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case type = "type"
        case distance = "distance"
        case calories = "calories"
        case startDateRaw = "start"
        case endDateRaw = "end"
    }
}

// MARK:- Date formatter
private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "YYYY-MM-dd"
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter
}()

private func cutRawDate(from: String) -> String? {
    if let index = from.range(of: "T")?.lowerBound {
        let substring = from[..<index]
        return String(substring)
    }
    
    return nil
}
