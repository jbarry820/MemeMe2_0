//
//  SentMemesCollectionViewController.swift
//  
//
//  Created by James Barry on 9/30/19.
//

import UIkit

class SentMemesCollectionViewController: UICollectionViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
}
