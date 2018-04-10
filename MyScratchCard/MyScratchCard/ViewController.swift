//
//  ViewController.swift
//  MyScratchCard
//
//  Created by Naattudurai Eswaramurthy on 10/04/18.
//  Copyright © 2018 Naattudurai Eswaramurthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ScratchCardImageViewDelegate {
    
    @IBOutlet weak var scratchCard: ScratchCardImageView!
    @IBOutlet weak var originalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originalImage.image = UIImage(named: "Bike")
        scratchCard.image = UIImage(color: UIColor.gray, size: scratchCard.frame.size)
        scratchCard.lineType = .square
        scratchCard.lineWidth = 20
        scratchCard.delegate = self
    }
    
    func scratchCardImageViewDidEraseProgress(eraseProgress: Float) {
        
        print(eraseProgress)
    }
    
    
}

