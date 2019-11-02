//
//  MemeDetailViewController.swift
//  MemeMe2_0
//
//  Created by James Barry on 10/18/19.
//  Copyright © 2019 Jim Barry. All rights reserved.
//

import UIKit

//MARK: - MemeDetailViewController: UIViewController

class MemeDetailViewController: UIViewController {
    
    //MARK: Properties
    
    var meme: Meme!
    
    //MARK: Outlets
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.memeImageView!.image = UIImage(named: "\(meme.memedImage)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
}
