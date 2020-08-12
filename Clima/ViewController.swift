//
//  ViewController.swift
//  Clima
//
//  Created by Alexander on 12.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextField.text)
    }
    
}

