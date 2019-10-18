//
//  SentMemesCollectionViewController2.swift
//  MemeMe2_0
//
//  Created by James Barry on 10/9/19.
//  Copyright © 2019 Jim Barry. All rights reserved.
//

import UIKit

class MemesCollectionViewController: UICollectionViewController {
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        //Set the image
        cell.memeImageView?.image = meme.memedImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Grab the DetailMeme from Storyboard
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! MemeDetailViewController

        //Populate view controller with data from the selected item
        //detailController.villain = allVillains[(indexPath as NSIndexPath).row]
        detailController.meme = self.memes?[(indexPath as NSIndexPath).row]

        // Present the view controller using navigation
        navigationController!.pushViewController(detailController, animated: true)

    }
}
