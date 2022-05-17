//
//  UseCase.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 01/03/2020.
//

import Foundation
import Common

public protocol UseCase {
    @discardableResult
    public func start() -> Cancellable?
}
