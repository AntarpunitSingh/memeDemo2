//
//  CollectionViewController.swift
//  meme
//
//  Created by Antarpunit Singh on 2012-04-22.
//  Copyright © 2019 AntarpunitSingh. All rights reserved.
//

import Foundation
import UIKit
class CollectionViewController: UICollectionViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appDelegate.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let mem = appDelegate.memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
    //    cell.nameLabel.text = villain.name
       cell.imageCellView?.image = mem.memedImage
        //cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
        
        return cell
    }
 
  /*  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        detailController.villain = self.allVillains[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
 */
}
