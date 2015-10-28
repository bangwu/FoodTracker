//
//  ViewController.swift
//  FoodTracker
//
//  Created by Bang Wu on 10/28/15.
//  Copyright © 2015 Bang Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Mark: Properties
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var mealNameInputText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark: Actions
    
    @IBAction func setDefaultMealName(sender: UIButton) {
        mealNameLabel.text = "Default Meal Name"
    }


}

