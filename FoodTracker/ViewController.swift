//
//  ViewController.swift
//  FoodTracker
//
//  Created by Bang Wu on 10/28/15.
//  Copyright © 2015 Bang Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    //Mark: Properties
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var mealNameInputText: UITextField!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mealNameInputText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage
        
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //Mark: Actions
    
    @IBAction func setDefaultMealName(sender: UIButton) {
        mealNameLabel.text = "Default Meal Name"
    }

    @IBAction func selectImageFromImageList(sender: UITapGestureRecognizer) {
        
        photoImageView.resignFirstResponder()
        
        let imageController = UIImagePickerController()
        
        imageController.sourceType = .PhotoLibrary
        
        imageController.delegate = self
        
        presentViewController(imageController, animated: true, completion: nil)
    }

}

