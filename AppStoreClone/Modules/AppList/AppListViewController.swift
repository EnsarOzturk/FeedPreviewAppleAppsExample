//
//  AppListViewController.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import UIKit

class AppListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    var appList: [App] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "AppListCell", bundle: nil), forCellWithReuseIdentifier: "AppListCell")
        
        let networkManager = NetworkManager()
        networkManager.fetchApps { response in
            self.appList =  response.feed.results
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppListCell", for: indexPath) as! AppListCell
        
        let app = appList[indexPath.row]
        
        cell.nameLabel.text = app.name
        cell.artistNameLabel.text = app.artistName
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.width, height: 96)
        
        return size
    }
}

