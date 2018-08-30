//
//  Palindrome.swift
//  Palindrome Checker
//
//  Created by Rick Wolter on 7/2/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation


func isPalindrome(string: String)-> Bool{
    let reversed = String(string.reversed())
    if string == reversed{
        return true
    } else {
        return false
    
    }}
