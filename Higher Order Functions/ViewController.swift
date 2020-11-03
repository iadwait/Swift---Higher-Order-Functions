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
        reduce()
        sort()
        flatMap()
        chaining()
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
    
    //MARK:- Reduce - Used to combine Elements in Collection and get a Single Value. like perform Addition,Add Strings
    func reduce()
    {
        print("Reduce Operations")
        let numberArray = [1,2,3,4,5]
        var sum:Int = 0
        for num in numberArray{
            sum = sum + num
        }
        print("Sum = \(sum)")
        
        //Reduce
        let sumReduce = numberArray.reduce(0, { $0 + $1 }) // in 1st parameter where 0 is written,After getting result, Result is Added by 1st Parameter value
        print("Sum Reduce = \(sumReduce)")
        
        let sumReduce2 = numberArray.reduce(0, +) // Here + indicates $0 + $1
        print("Sum Reduce2 = \(sumReduce2)")
        
        //Concatinate Strings
        let strArray = ["One","Two","Three","Four","Five"]
        let sumReduce3 = strArray.reduce("", { $0 + $1 }) //1st Parameter will append Strint at First of the Result
        print("SumReduce3 = \(sumReduce3)")
    }
    
    //MARK:- Sort
    func sort()
    {
        print("Sort Operation")
        let arrNumber = [1,2,3,4,5]
        let sortedArray = arrNumber.sorted{ $0 > $1 }
        print("Sorted Array = \(sortedArray)")
    }
    
    //MARK:- FlatMap - Combine Values,Also ignore nil value
    func flatMap()
    {
        print("Flat Map Operation")
        let arr1 = [10,11,12]
        let arr2 = [13,14,15]
        //let arr = [[10,11,12],[13,14,15]]
        let arr = [arr1,arr2]
        var mergeArray:[Int] = []
        for num in arr{
            mergeArray += num
        }
        print("Merge Array = \(mergeArray)")
        
        //Flat Map
        let mergeArray2 = arr.flatMap{ $0 }
        print("Merge Array2 = \(mergeArray2)")
        
        let strArray = ["Test",nil,"Test2","Test3",nil,"Test4"] // Removes Nil automatically, Can be applied in JSON Data
        let mergeArray3 = strArray.flatMap{$0}
        print("Merge Array3 = \(mergeArray3)")
    }
    
    //MARK:- Chaining - Means Using multiple Function(Map,Filter,Reduce,FlatMap etc) in a sinle operations
    func chaining()
    {
        print("Chaining Operation")
        let arrOfIntArr = [[11,12,13],[14,15,16]]
        //1.Combine(FlatMap)
        //2.Keep only Even(Filter)
        //3.Square all the Even's(MAP)
        //4.Add the Result(Reduce)
        let result = arrOfIntArr.flatMap{$0}.filter{$0 % 2 == 0}.map{$0 * $0}
        let res = result.reduce(0, {$0 + $1})
        print("Chaining Result = \(res)")
        
        let dollarResult = arrOfIntArr.flatMap{$0}.map{"$\($0)"}
        print("Dollar Result = \(dollarResult)")
        
        //let dollarResult = ["$11", "$12", "$13", "$14", "$15", "$16"]
        //Converting String to Int Array and removing $
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = .init(identifier: "en_US")
        numberFormatter.numberStyle = .currency
        let integers = dollarResult.map(numberFormatter.number).compactMap({$0?.intValue})
        print("Int Arr = ",integers) // [11, 12, 13, 14, 15, 16]
    }
    
}

