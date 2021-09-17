//
//  ViewController.swift
//  CafeMiniApp_Blitek
//
//  Created by BRENT BLITEK on 9/13/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var thisCostsLabel: UILabel!
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var thisLabel: UILabel!
    
    var totPrice = 0.0
    var foodItems : [String:Double] = [:]
    
 //   var foodKeys = foodItems.keys
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuLabel.text = "Steak = $15.90 \n Cereal = $5.99"
        foodItems ["Steak"] = 15.90
        foodItems ["Cereal"] = 5.99
        foodItems ["Pizza"] = 10.99
        foodItems ["Carrots"] = 2.99
        foodItems ["Burger"] = 9.99
 //       menuLabel.text = foodItems.keys
        // Do any additional setup after loading the view.
    }
    @IBAction func addToCartButton(_ sender: UIButton) {
        let result = foodTextField.text!
       
            if let x = foodItems[result]{
                let val = foodItems.values
                thisCostsLabel.text = "This costs: $\(x)"
                totPrice += x
                cartLabel.text = "You just added \(result) to your\n cart making your total price \(totPrice)"
            }
            else
            {
                thisCostsLabel.text = "This item is not sold here"
            }
          foodTextField.resignFirstResponder()

    }
    @IBAction func sortByItemButtin(_ sender: UIButton) {
        //sort menu label by item name
        thisLabel.text = "Function not available"
    }
    @IBAction func sortByPriceButton(_ sender: UIButton) {
        //sort menu label by price
        thisLabel.text = "Function not available"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        foodTextField.resignFirstResponder()
        return true
    }
    

}

