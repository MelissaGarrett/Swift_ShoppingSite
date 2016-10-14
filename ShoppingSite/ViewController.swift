//
//  ViewController.swift
//  ShoppingSite
//
//  Created by Melissa  Garrett on 10/13/16.
//  Copyright © 2016 MelissaGarrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageButton: UIButton!
    
    let images:[UIImage] = [UIImage(named: "blackJacket.jpeg")!,
                            UIImage(named: "blackJeans.jpeg")!,
                            UIImage(named: "blueDress.jpeg")!,
                            UIImage(named: "blueJeanDress.jpeg")!,
                            UIImage(named: "blueJeans.jpeg")!,
                            UIImage(named: "blueTop.jpeg")!,
                            UIImage(named: "orangeTop.jpeg")!,
                            UIImage(named: "pinkTop.jpeg")!,
                            UIImage(named: "purpleJacket.jpeg")!,
                            UIImage(named: "redDress.jpeg")!,
                            UIImage(named: "whiteJacket.jpeg")!,
                            UIImage(named: "whiteJeans.jpeg")!]
    
    let items:[String] = ["Black Jacket", "Black Jeans", "Blue Dress", "BlueJean Dress", "Blue Jeans", "Blue Top", "Orange Top", "Pink Top", "Purple Jacket", "Red Dress", "White Jacket", "White Jeans"]
    
    let prices:[Int] = [75, 50, 89, 35, 45, 28, 33, 19, 99, 95, 88, 60]
    
    var currentImage = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(_ sender: UIBarButtonItem) {
        var randomIndex:Int
        
        // Run the loop to ensure the same image isn't displayed consecutively
        repeat {
            randomIndex = Int(arc4random_uniform(12)) // 0-11 indices
        } while currentImage == randomIndex
        
        currentImage = randomIndex
        
        imageButton.setImage(images[randomIndex], for: UIControlState.normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let detailsVC = segue.destination as! DetailViewController
            detailsVC.itemDescription = items[currentImage]
            detailsVC.price = prices[currentImage]
        }
    }
    
}

