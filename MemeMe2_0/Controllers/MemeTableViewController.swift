//
//  MemeTableViewController.swift
//  MemeMe2_0
//
//  Created by James Barry on 9/25/19.
//  Copyright © 2019 Jim Barry. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController UIViewControllerTransitionDelegate {
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
}
