//
//  ViewController.swift
//  Higher Order Functions
//
//  Created by Adwait Barkale on 03/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        map()
    }

    func map()
    {
        let numberArray = [1,2,3,4,5]
        var emptyArray:[Int] = []
        for num in numberArray{
            emptyArray.append(num * 2)
        }
        print("Empty Array = \(emptyArray)")
        
        //MAP
        //Method 1
        let emptyArray2 = numberArray.map { (num:Int) -> Int in
            return num * 2
        }
        print("Empty Array2 = \(emptyArray2)")
        
        //Method 2
        let emptyArray3 = numberArray.map { (num:Int)  in
            return num * 2
        }
        print("Empty Array3 = \(emptyArray3)")
        
        //Method 3
        let emptyArray4 = numberArray.map { (num)  in
            return num * 2
        }
        print("Empty Array4 = \(emptyArray4)")
        
        //Method 4
        let emptyArray5 = numberArray.map{ $0 * 2 }
        print("Empty Array5 = \(emptyArray5)")
    }

}

