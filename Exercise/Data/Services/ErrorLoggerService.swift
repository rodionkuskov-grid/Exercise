//
//  1.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

class ErrorLoggerServiceImpl: ErrorLoggerService {
    static let shared = ErrorLoggerServiceImpl()
    
    func log(error: String) {
        print("🔥 Error occured: \(error) 🔥")
    }
}
