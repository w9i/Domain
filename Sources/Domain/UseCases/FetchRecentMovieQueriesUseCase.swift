//
//  FetchRecentMovieQueriesUseCase.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 11.08.19.
//

import Foundation
import Common

// This is another option to create Use Case using more generic way
public final class FetchRecentMovieQueriesUseCase: UseCase {

    public struct RequestValue {
        let maxCount: Int
    }
    public typealias ResultValue = (Result<[MovieQuery], Error>)

    public  let requestValue: RequestValue
    public  let completion: (ResultValue) -> Void
    public  let moviesQueriesRepository: MoviesQueriesRepository

    init(requestValue: RequestValue,
         completion: @escaping (ResultValue) -> Void,
         moviesQueriesRepository: MoviesQueriesRepository) {

        self.requestValue = requestValue
        self.completion = completion
        self.moviesQueriesRepository = moviesQueriesRepository
    }
    
    public func start() -> Cancellable? {

        moviesQueriesRepository.fetchRecentsQueries(maxCount: requestValue.maxCount, completion: completion)
        return nil
    }
}
