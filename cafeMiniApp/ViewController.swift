//
//  ViewController.swift
//  cafeMiniApp
//
//  Created by ALEXANDER CARLSON on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    var products = ["Coffee", "Hot Chocolate", "Bagel", "Turkey Sandwich", "Cheeseburger"]
    var prices = [2.00, 2.00, 4.00, 5.00, 5.00]
    var total = 0.0
    
    @IBOutlet weak var productOutlet: UILabel!
    @IBOutlet weak var costOutlet: UILabel!
    @IBOutlet weak var itemWantedOutlet: UITextField!
    @IBOutlet weak var cartOutlet: UITextView!
    @IBOutlet weak var priceOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var text = ""
        for i in 0 ..< products.count{
            text += "\(products[i]) \n \n"
        }
        productOutlet.text = text
        var text1 = ""
        for i in 0 ..< prices.count{
            text1 += "$\(prices[i]) \n \n"
        }
        costOutlet.text = text1
        }
        
    @IBAction func enterAction(_ sender: Any) {
        let itemWanted = itemWantedOutlet.text
        var pony = true
        for i in 0..<products.count{
            if products[i] == itemWanted{
                cartOutlet.text += products[i]
                cartOutlet.text += "\n"
                total += prices[i]
                priceOutlet.text = "$\(total)"
                pony = false
            }
        }
        if pony{
            cartOutlet.text += "Invalid Item \n"
        }
    }
    
    

}

