//
//  ViewController.swift
//  Palindrome Checker
//
//  Created by Rick Wolter on 7/2/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func palindromeButton(_ sender: Any) {
        palin
    }
    
    @IBAction func textEdit(_ sender: Any) {
    }
    @IBOutlet weak var label: UILabel!
    label.setTitle(isPalindrome())
}

