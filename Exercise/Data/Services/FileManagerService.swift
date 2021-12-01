//
//  3.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Foundation

class FileManagerServiceImpl: FileManagerService {
    private let loggerService: ErrorLoggerService = ErrorLoggerServiceImpl.shared
    private let jsonService: JsonParsingService = JsonParsingServiceImpl.shared
    
    private let fileManager = FileManager.default
    private let resourcePath = Bundle.main.resourcePath
    private var metadataPath: String {
        return "\(resourcePath!)/Metadata"
    }
    
    private func getRawDataFromFile(with name: String) -> Data? {
        do {
            let filePath = "\(metadataPath)/\(name)"
            let jsonData = try String(contentsOfFile: filePath).data(using: .utf8)
            return jsonData

        } catch(let error) {
            loggerService.log(error: error.localizedDescription)
        }

        return nil
    }
}

extension FileManagerServiceImpl {
    func getAllJsonNamesFromFolder() -> [String] {
        do {
            let directoryItems = try fileManager.contentsOfDirectory(atPath: metadataPath)
            return directoryItems
            
        } catch(let error) {
            loggerService.log(error: error.localizedDescription)
        }
        
        return [""]
    }

    
    func getDataFromFile<T: Codable>(with name: String, for type: T.Type) -> T? {
        if let rawData = getRawDataFromFile(with: name) {
            let parsedData = jsonService.parse(from: rawData, to: type)
            return parsedData
        }

        return nil
    }
}
