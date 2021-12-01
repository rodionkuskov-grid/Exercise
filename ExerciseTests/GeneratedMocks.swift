// MARK: - Mocks generated from file: Exercise/Domain/Interfaces/Interfaces.swift at 2021-12-01 21:44:07 +0000

//
//  Interfaces.swift
//  Exercise
//
//  Created by Rodion Kuskov on 12/1/21.
//

import Cuckoo
@testable import Exercise

import Foundation


 class MockErrorLoggerService: ErrorLoggerService, Cuckoo.ProtocolMock {
    
     typealias MocksType = ErrorLoggerService
    
     typealias Stubbing = __StubbingProxy_ErrorLoggerService
     typealias Verification = __VerificationProxy_ErrorLoggerService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ErrorLoggerService?

     func enableDefaultImplementation(_ stub: ErrorLoggerService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func log(error: String)  {
        
    return cuckoo_manager.call("log(error: String)",
            parameters: (error),
            escapingParameters: (error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.log(error: error))
        
    }
    

	 struct __StubbingProxy_ErrorLoggerService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func log<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockErrorLoggerService.self, method: "log(error: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ErrorLoggerService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func log<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("log(error: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ErrorLoggerServiceStub: ErrorLoggerService {
    

    

    
     func log(error: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockJsonParsingService: JsonParsingService, Cuckoo.ProtocolMock {
    
     typealias MocksType = JsonParsingService
    
     typealias Stubbing = __StubbingProxy_JsonParsingService
     typealias Verification = __VerificationProxy_JsonParsingService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: JsonParsingService?

     func enableDefaultImplementation(_ stub: JsonParsingService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func parse<T: Codable>(from data: Data, to type: T.Type) -> T? {
        
    return cuckoo_manager.call("parse(from: Data, to: T.Type) -> T?",
            parameters: (data, type),
            escapingParameters: (data, type),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.parse(from: data, to: type))
        
    }
    

	 struct __StubbingProxy_JsonParsingService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func parse<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T: Codable>(from data: M1, to type: M2) -> Cuckoo.ProtocolStubFunction<(Data, T.Type), T?> where M1.MatchedType == Data, M2.MatchedType == T.Type {
	        let matchers: [Cuckoo.ParameterMatcher<(Data, T.Type)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockJsonParsingService.self, method: "parse(from: Data, to: T.Type) -> T?", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_JsonParsingService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func parse<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T: Codable>(from data: M1, to type: M2) -> Cuckoo.__DoNotUse<(Data, T.Type), T?> where M1.MatchedType == Data, M2.MatchedType == T.Type {
	        let matchers: [Cuckoo.ParameterMatcher<(Data, T.Type)>] = [wrap(matchable: data) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return cuckoo_manager.verify("parse(from: Data, to: T.Type) -> T?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class JsonParsingServiceStub: JsonParsingService {
    

    

    
     func parse<T: Codable>(from data: Data, to type: T.Type) -> T?  {
        return DefaultValueRegistry.defaultValue(for: (T?).self)
    }
    
}



 class MockLoadableService: LoadableService, Cuckoo.ProtocolMock {
    
     typealias MocksType = LoadableService
    
     typealias Stubbing = __StubbingProxy_LoadableService
     typealias Verification = __VerificationProxy_LoadableService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: LoadableService?

     func enableDefaultImplementation(_ stub: LoadableService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_LoadableService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_LoadableService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class LoadableServiceStub: LoadableService {
    

    

    
}



 class MockFileManagerService: FileManagerService, Cuckoo.ProtocolMock {
    
     typealias MocksType = FileManagerService
    
     typealias Stubbing = __StubbingProxy_FileManagerService
     typealias Verification = __VerificationProxy_FileManagerService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: FileManagerService?

     func enableDefaultImplementation(_ stub: FileManagerService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getAllJsonNamesFromFolder() -> [String] {
        
    return cuckoo_manager.call("getAllJsonNamesFromFolder() -> [String]",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getAllJsonNamesFromFolder())
        
    }
    
    
    
     func getDataFromFile<T: Codable>(with name: String, for type: T.Type) -> T? {
        
    return cuckoo_manager.call("getDataFromFile(with: String, for: T.Type) -> T?",
            parameters: (name, type),
            escapingParameters: (name, type),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getDataFromFile(with: name, for: type))
        
    }
    

	 struct __StubbingProxy_FileManagerService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getAllJsonNamesFromFolder() -> Cuckoo.ProtocolStubFunction<(), [String]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockFileManagerService.self, method: "getAllJsonNamesFromFolder() -> [String]", parameterMatchers: matchers))
	    }
	    
	    func getDataFromFile<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T: Codable>(with name: M1, for type: M2) -> Cuckoo.ProtocolStubFunction<(String, T.Type), T?> where M1.MatchedType == String, M2.MatchedType == T.Type {
	        let matchers: [Cuckoo.ParameterMatcher<(String, T.Type)>] = [wrap(matchable: name) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockFileManagerService.self, method: "getDataFromFile(with: String, for: T.Type) -> T?", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_FileManagerService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getAllJsonNamesFromFolder() -> Cuckoo.__DoNotUse<(), [String]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getAllJsonNamesFromFolder() -> [String]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getDataFromFile<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T: Codable>(with name: M1, for type: M2) -> Cuckoo.__DoNotUse<(String, T.Type), T?> where M1.MatchedType == String, M2.MatchedType == T.Type {
	        let matchers: [Cuckoo.ParameterMatcher<(String, T.Type)>] = [wrap(matchable: name) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return cuckoo_manager.verify("getDataFromFile(with: String, for: T.Type) -> T?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class FileManagerServiceStub: FileManagerService {
    

    

    
     func getAllJsonNamesFromFolder() -> [String]  {
        return DefaultValueRegistry.defaultValue(for: ([String]).self)
    }
    
     func getDataFromFile<T: Codable>(with name: String, for type: T.Type) -> T?  {
        return DefaultValueRegistry.defaultValue(for: (T?).self)
    }
    
}



 class MockAchivmentService: AchivmentService, Cuckoo.ProtocolMock {
    
     typealias MocksType = AchivmentService
    
     typealias Stubbing = __StubbingProxy_AchivmentService
     typealias Verification = __VerificationProxy_AchivmentService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AchivmentService?

     func enableDefaultImplementation(_ stub: AchivmentService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getNumberOfSuccessfulThreeDaysRunning(from dates: [Date]) -> Int {
        
    return cuckoo_manager.call("getNumberOfSuccessfulThreeDaysRunning(from: [Date]) -> Int",
            parameters: (dates),
            escapingParameters: (dates),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getNumberOfSuccessfulThreeDaysRunning(from: dates))
        
    }
    
    
    
     func getNumberOfTenKilometersMarathonsPerWeek(from dates: [Date], distances: [Double]) -> Int {
        
    return cuckoo_manager.call("getNumberOfTenKilometersMarathonsPerWeek(from: [Date], distances: [Double]) -> Int",
            parameters: (dates, distances),
            escapingParameters: (dates, distances),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getNumberOfTenKilometersMarathonsPerWeek(from: dates, distances: distances))
        
    }
    
    
    
     func getNumberOfTrainingsWithComletedCalories(from trainings: [UserTrainingDTO]) -> Int {
        
    return cuckoo_manager.call("getNumberOfTrainingsWithComletedCalories(from: [UserTrainingDTO]) -> Int",
            parameters: (trainings),
            escapingParameters: (trainings),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getNumberOfTrainingsWithComletedCalories(from: trainings))
        
    }
    

	 struct __StubbingProxy_AchivmentService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getNumberOfSuccessfulThreeDaysRunning<M1: Cuckoo.Matchable>(from dates: M1) -> Cuckoo.ProtocolStubFunction<([Date]), Int> where M1.MatchedType == [Date] {
	        let matchers: [Cuckoo.ParameterMatcher<([Date])>] = [wrap(matchable: dates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAchivmentService.self, method: "getNumberOfSuccessfulThreeDaysRunning(from: [Date]) -> Int", parameterMatchers: matchers))
	    }
	    
	    func getNumberOfTenKilometersMarathonsPerWeek<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from dates: M1, distances: M2) -> Cuckoo.ProtocolStubFunction<([Date], [Double]), Int> where M1.MatchedType == [Date], M2.MatchedType == [Double] {
	        let matchers: [Cuckoo.ParameterMatcher<([Date], [Double])>] = [wrap(matchable: dates) { $0.0 }, wrap(matchable: distances) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAchivmentService.self, method: "getNumberOfTenKilometersMarathonsPerWeek(from: [Date], distances: [Double]) -> Int", parameterMatchers: matchers))
	    }
	    
	    func getNumberOfTrainingsWithComletedCalories<M1: Cuckoo.Matchable>(from trainings: M1) -> Cuckoo.ProtocolStubFunction<([UserTrainingDTO]), Int> where M1.MatchedType == [UserTrainingDTO] {
	        let matchers: [Cuckoo.ParameterMatcher<([UserTrainingDTO])>] = [wrap(matchable: trainings) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAchivmentService.self, method: "getNumberOfTrainingsWithComletedCalories(from: [UserTrainingDTO]) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AchivmentService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getNumberOfSuccessfulThreeDaysRunning<M1: Cuckoo.Matchable>(from dates: M1) -> Cuckoo.__DoNotUse<([Date]), Int> where M1.MatchedType == [Date] {
	        let matchers: [Cuckoo.ParameterMatcher<([Date])>] = [wrap(matchable: dates) { $0 }]
	        return cuckoo_manager.verify("getNumberOfSuccessfulThreeDaysRunning(from: [Date]) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getNumberOfTenKilometersMarathonsPerWeek<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from dates: M1, distances: M2) -> Cuckoo.__DoNotUse<([Date], [Double]), Int> where M1.MatchedType == [Date], M2.MatchedType == [Double] {
	        let matchers: [Cuckoo.ParameterMatcher<([Date], [Double])>] = [wrap(matchable: dates) { $0.0 }, wrap(matchable: distances) { $0.1 }]
	        return cuckoo_manager.verify("getNumberOfTenKilometersMarathonsPerWeek(from: [Date], distances: [Double]) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getNumberOfTrainingsWithComletedCalories<M1: Cuckoo.Matchable>(from trainings: M1) -> Cuckoo.__DoNotUse<([UserTrainingDTO]), Int> where M1.MatchedType == [UserTrainingDTO] {
	        let matchers: [Cuckoo.ParameterMatcher<([UserTrainingDTO])>] = [wrap(matchable: trainings) { $0 }]
	        return cuckoo_manager.verify("getNumberOfTrainingsWithComletedCalories(from: [UserTrainingDTO]) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AchivmentServiceStub: AchivmentService {
    

    

    
     func getNumberOfSuccessfulThreeDaysRunning(from dates: [Date]) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func getNumberOfTenKilometersMarathonsPerWeek(from dates: [Date], distances: [Double]) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func getNumberOfTrainingsWithComletedCalories(from trainings: [UserTrainingDTO]) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}

