//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        
        let length = args.count
        let end = args[length-1]
        
        if end == "count" {
            return length-1
            
        } else if end == "avg" {
            
            let nums = length - 1
            var sum : Int = 0
            switch length {
            case 1:
                return 0
            default:
                for index in 0...length-2 {
                    sum += Int(args[index])!
                }
                return (sum/nums)
            }
            
        } else if end == "fact" {
            
            switch length {
            case 1:
                return 0
            default:
                let value : Int = Int(args[0])!
                switch value {
                case 0, 1:
                    return 1
                default:
                    var product : Int = 1
                    for factor in 1...value {
                        product *= factor
                    }
                    return product
                    }
            }
            
            
        } else if (length == 3) {
            let op = args[1]
            let n1 = Int(args[0])
            let n2 = Int(args[2])
            
            
            
            if op == "+" {
                return n1! + n2!
            } else if op == "-" {
                return n1! - n2!
            } else if op == "*" {
                return n1! * n2!
            } else if op == "/" {
                return n1! / n2!
            } else if op == "%" {
                return n1! - (n1! / n2!) * n2!
            }
            
            
        }
//            else {
            return 0
//        }
        
        
        
        
        
        
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
    
    
    
    
    
    
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

