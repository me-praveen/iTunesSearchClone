//
//  FetchState.swift
//  iTunesSearchClone
//
//  Created by Praveen on 19/07/24.
//

import Foundation

enum FetchState: Comparable {
    case good
    case isLoading
    case loadedAll
    case noResults
    case error(String)
}
