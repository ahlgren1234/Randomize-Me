//
//  ExampleData.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-06-05.
//

import Foundation

struct ExampleData: Encodable, Identifiable {
    let id = UUID()
    let name: String
    let image: String
    
    static var examples: [ExampleData] {
        [
            ExampleData(name: "Basketball", image: "🏀"),
            ExampleData(name: "Soccer", image: "⚽️"),
            ExampleData(name: "Rugby", image: "🏉"),
            ExampleData(name: "Football", image: "🏈"),
            ExampleData(name: "Tennis", image: "🎾"),
            ExampleData(name: "Baseball", image: "⚾️"),
            ExampleData(name: "Volleyball", image: "🏐"),
            ExampleData(name: "Pool", image: "🎱")
        ]
    }
    
    static var data: Data? {
        try? JSONEncoder().encode(examples)
    }
}
