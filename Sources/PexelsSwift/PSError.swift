//
//  PSError.swift
//  
//
//  Created by Lukas Pistrol on 14.05.22.
//

import Foundation

/// Error Type indicating why an operation has failed
public enum PSError: Error, Equatable {
    case generic(String)
    case noAPIKey
    case noContent
    case badURL

    var localizedDescription: String {
        switch self {
        case .generic(let error):
            return "Generic Error: \(error)"
        case .noAPIKey:
            return "No API key was set. Call `setAPIKey(_:)` before making a request"
        case .noContent:
            return "No content was found"
        case .badURL:
            return "Not a valid URL"
        }
    }
}