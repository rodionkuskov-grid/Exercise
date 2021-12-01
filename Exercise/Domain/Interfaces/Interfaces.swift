//
//  Interfaces.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

// MARK:- Service for error logging.
protocol ErrorLoggerService {
    func log(error: String)
}

// MARK:- Service for parsing JSONs from Data to generic codable type
protocol JsonParsingService {
    func parse<T: Codable>(from data: Data, to type: T.Type) -> T?
}

// MARK:- Service for loading JSONs that matches the conditions
protocol LoadableService {
    
}

// MARK:- Service for working with folders and files
protocol FileManagerService {
    func getAllJsonNamesFromFolder() -> [String]
    func getDataFromFile<T: Codable>(with name: String, for type: T.Type) -> T?
}

// MARK:- Service for calculating number of completed achivements
protocol AchivmentService {
    
}
