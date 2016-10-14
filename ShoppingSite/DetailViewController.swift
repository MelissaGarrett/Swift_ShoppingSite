//
//  DetailViewController.swift
//  ShoppingSite
//
//  Created by Melissa  Garrett on 10/13/16.
//  Copyright © 2016 MelissaGarrett. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var xsButton: UIButton!
    @IBOutlet weak var smallButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var largeButton: UIButton!
    @IBOutlet weak var xlButton: UIButton!
    
    var itemDescription = ""
    var price:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        descriptionLabel.text = itemDescription
        priceLabel.text = "$ \(price)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sizeButtonPressed(_ sender: UIButton) {
        let checkMark = "\u{2705}"

        switch sender {
            case xsButton:
                xsButton.setTitle(checkMark, for: UIControlState.normal)

                smallButton.setTitle("SMALL", for: UIControlState.normal)
                mediumButton.setTitle("MEDIUM", for: UIControlState.normal)
                largeButton.setTitle("LARGE", for: UIControlState.normal)
                xlButton.setTitle("XL", for: UIControlState.normal)
            
            case smallButton:
                smallButton.setTitle(checkMark, for: UIControlState.normal)
            
                xsButton.setTitle("XS", for: UIControlState.normal)
                mediumButton.setTitle("MEDIUM", for: UIControlState.normal)
                largeButton.setTitle("LARGE", for: UIControlState.normal)
                xlButton.setTitle("XL", for: UIControlState.normal)

            case mediumButton:
                mediumButton.setTitle(checkMark, for: UIControlState.normal)
            
                xsButton.setTitle("XS", for: UIControlState.normal)
                smallButton.setTitle("SMALL", for: UIControlState.normal)
                largeButton.setTitle("LARGE", for: UIControlState.normal)
                xlButton.setTitle("XL", for: UIControlState.normal)

            case largeButton:
                largeButton.setTitle(checkMark, for: UIControlState.normal)
            
                xsButton.setTitle("XS", for: UIControlState.normal)
                smallButton.setTitle("SMALL", for: UIControlState.normal)
                mediumButton.setTitle("MEDIUM", for: UIControlState.normal)
                xlButton.setTitle("XL", for: UIControlState.normal)

            case xlButton:
                xlButton.setTitle(checkMark, for: UIControlState.normal)
            
                xsButton.setTitle("XS", for: UIControlState.normal)
                smallButton.setTitle("SMALL", for: UIControlState.normal)
                mediumButton.setTitle("MEDIUM", for: UIControlState.normal)
                largeButton.setTitle("LARGE", for: UIControlState.normal)

            default:
                break;
        }
    }
    
    @IBAction func addToCartButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "SUCCESS", message: "Item successfully added to cart", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction);
        self.present(alert, animated: true)
        
        xsButton.setTitle("XS", for: UIControlState.normal)
        smallButton.setTitle("SMALL", for: UIControlState.normal)
        mediumButton.setTitle("MEDIUM", for: UIControlState.normal)
        largeButton.setTitle("LARGE", for: UIControlState.normal)
        xlButton.setTitle("XL", for: UIControlState.normal)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
