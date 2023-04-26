//
//  Dated.swift
//  
//
//  Created by Jeremy Bannister on 4/26/23.
//

///
@_exported import Foundation


///
public struct Dated <Value> {
    
    ///
    public init
        (value: Value,
         date: Date) {
        
        self.value = value
        self.date = date
    }
    
    ///
    public var value: Value
    
    ///
    public var date: Date
}

///
extension Dated {
    
    ///
    public func map
        <NewValue>
        (_ transform: (Value)throws->NewValue)
    rethrows -> Dated<NewValue> {
        
        ///
        try .init(
            value: transform(value),
            date: date
        )
    }
    
    ///
    @available(iOS 13.0, macOS 10.15.0, watchOS 6.0.0, tvOS 13.0.0, *)
    public func map
        <NewValue>
        (_ transform: (Value)async throws->NewValue)
    async rethrows -> Dated<NewValue> {
        
        ///
        try await .init(
            value: transform(value),
            date: date
        )
    }
}

///
extension Dated {
    
    ///
    public static func now (_ value: Value) -> Self {
        .init(
            value: value,
            date: Date()
        )
    }
}

///
extension Dated: Decodable where Value: Decodable { }
extension Dated: Encodable where Value: Encodable { }
extension Dated: Equatable where Value: Equatable { }
extension Dated: Hashable where Value: Hashable { }
