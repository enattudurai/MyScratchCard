//
//  ViewController.swift
//  ScratchCardImageView
//
//  Created by Aleksandrs Proskurins on 09/12/2016.
//  Copyright © 2016 Aleksandrs Proskurins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ScratchCardImageViewDelegate {
    
    @IBOutlet weak var scratchCard: ScratchCardImageView!
    @IBOutlet weak var originalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var Image =  loadRandomImage();
        
        originalImage.image = UIImage(named: "Nattu")
        scratchCard.image = UIImage(color: UIColor.gray, size: scratchCard.frame.size)
        scratchCard.lineType = .square
        scratchCard.lineWidth = 20
        scratchCard.delegate = self
    }
    
    func scratchCardImageViewDidEraseProgress(eraseProgress: Float) {
        
        print(eraseProgress)
    }
    
    func loadRandomImage() -> UIImage?{
        let path = Bundle.main.path(forResource: "Images", ofType: "jpeg")
        let names = NSArray(contentsOfFile: path) as! [String]
        let random = Int(arc4random_uniform(UInt32(names.count)))
         let imageName = names[random]
        return UIImage(named: imageName)

    }
}

