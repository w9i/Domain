//
//  MoviesQueriesRepositoryInterface.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 15.02.19.
//

import Foundation

public protocol MoviesQueriesRepository {
    func fetchRecentsQueries(maxCount: Int, completion: @escaping (Result<[MovieQuery], Error>) -> Void)
    func saveRecentQuery(query: MovieQuery, completion: @escaping (Result<MovieQuery, Error>) -> Void)
}
