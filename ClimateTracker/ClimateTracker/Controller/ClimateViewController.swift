//
//  ClimateViewController.swift
//  ClimateTracker
//
//  Created by Dinesh Danda on 2/24/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import UIKit

class ClimateViewController: UIViewController,  UITextFieldDelegate {


    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
    }

    @IBAction func didPressSearchButton(_ sender: UIButton) {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }

    /* In this case when you click on go/return button on the Keyboard then it will do the same function as searchButton in my App.*/

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type Something"
            return false
        }
    }

    /* After end editing celar the String in the Textfiled.*/

    func textFieldDidEndEditing(_ textField: UITextField)  {
        searchTextField.text = ""
    }

}
