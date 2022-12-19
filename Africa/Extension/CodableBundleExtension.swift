//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Sergei Shekshuev on 18.12.2022.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file: String)-> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Unable to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        return loaded
    }
}
