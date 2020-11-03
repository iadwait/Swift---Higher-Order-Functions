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
        filter()
    }

    //MARK:- MAP - Used when we have to apply same operation to all elements in an Array.
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
    
    //MARK:- Filter - Return Elements in Array that meet a Condition
    func filter()
    {
        print("Filter Operations")
        let numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        var resultArray:[Int] = []
        for num in numberArray{
            if num % 2 == 0{
                resultArray.append(num)
            }
        }
        print("ResultArray = \(resultArray)")
        
        //Filter
        let resultArray2 = numberArray.filter{ $0 % 2 != 0 } //Condition Inside Consure if true will be appended
        print("Result Array2 = \(resultArray2)")
        
        let resultArray3  = numberArray.filter { (num)  in
            return num % 2 == 0
        }
        print("Result Array3 \(resultArray3)")
    }
    
}

