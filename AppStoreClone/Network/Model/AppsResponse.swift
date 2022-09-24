//
//  AppsResponse.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import Foundation

struct AppsResponse: Codable {
    let feed: Feed
}

struct Feed: Codable {
    let title: String
    let id: String
    let auther: Auther
    let country: String
    let results: [App]
}

struct Auther: Codable {
    let name: String
    let url: String
}

struct App: Codable {
    let artistName: String
    let id: String
    let name: String
    let releaseDate: String
    let kind: String
    let artworkUrl100: String
    let url: String
}
