//
//  2.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

class JsonParsingServiceImpl: JsonParsingService {
    static let shared = JsonParsingServiceImpl()
    private let loggerService: ErrorLoggerService = ErrorLoggerServiceImpl.shared

    func parse<T: Codable>(from data: Data, to type: T.Type) -> T? {
        do {
            let decodedData = try JSONDecoder().decode(type, from: data)
            return decodedData
        } catch(let error) {
            loggerService.log(error: error.localizedDescription)
        }
        
        return nil
    }
}
