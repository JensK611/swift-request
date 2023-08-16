//
//  Decoding.swift
//
//
//  Created by Jens Krug on 16.08.23.
//

import Foundation

/// A protocol providing a `decode<T: Decodable>(: T.Type, from: Data) -> T` interface.
public protocol Decoding {
    /**
     * Decodes data to an instance of the indicated type.
     *
     * - Parameter type:
     *  The type data is decoded to.
     * - Parameter data:
     *  The data to decode.
     */
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
}
