//
//  NetworkManager.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import Foundation

class NetworkManager {
    
    let url = URL(string: "https://rss.applemarketingtools.com/api/v2/tr/apps/top-free/10/apps.json")!
    
    
    func fetchApps(completion: @escaping(AppsResponse) -> Void) {
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let appsResponse = try! JSONDecoder().decode(AppsResponse.self, from: data)
                completion(appsResponse)
            } else if let error = error {
                
            }
        }
        task.resume()
    }
}

