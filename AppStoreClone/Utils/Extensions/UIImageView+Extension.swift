//
//  UIImageView+Extension.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import UIKit

extension UIImageView {
    func loadFrom(url: String) {
        guard let url = URL(string: url) else { return }
        
        DispatchQueue.global(qos: .background).async {
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                    DispatchQueue.main.async { [weak self] in
                        self?.image = loadedImage
                    }
                }
            }
        }
    }
}
