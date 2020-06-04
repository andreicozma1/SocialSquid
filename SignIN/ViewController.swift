//
//  ViewController.swift
//  SignIN
//
//  Created by Andrei Cozma on 5/27/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Define callbacks for clicking each one of our UI Elements
    @IBAction func google(_ sender: UIButton) {
        printClickedElement(btnTitle: (sender.titleLabel?.text)!)
    }
    @IBAction func facebook(_ sender: UIButton) {
        printClickedElement(btnTitle: (sender.titleLabel?.text)!)
    }
    @IBAction func email(_ sender: UIButton) {
        printClickedElement(btnTitle: (sender.titleLabel?.text)!)
    }
    
    // Helper function to print out a log
    func printClickedElement(btnTitle: String){
        let dateString = Date().toString(dateFormat: "yyyy-MM-dd HH:mm:ss")
        
        print("Clicked on " + btnTitle + " at " + dateString)
    }
}

extension Date{
    // here dateFormat stands for the label of the argument we supply
    func toString(dateFormat format: String) -> String{
        // We then use the format keyword to reference our argument
        let formatter = DateFormatter()
        formatter.dateFormat = format
        // Since we are extending the Date object, we can reference 'self' when using the formatter
        return formatter.string(from: self)
    }
}

