//
//  SentMemeTableViewController.swift
//  MemeMe2_0
//
//  Created by James Barry on 10/7/19.
//  Copyright © 2019 Jim Barry. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController, UIViewControllerTransitioningDelegate {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let meme = memes[(indexPath as NSIndexPath).row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
        
        cell.memeImageView?.image = meme.memedImage
        cell.cellLabel.text =  "\(meme.topText) ... \(meme.bottomText)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailViewController.meme = memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(detailViewController, animated: true)
    }
    
}
