//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    print(performOperation(with: 1,2,3, operation: +))
    print(performOperation(with: -1,3,7,6,-10, operation: -))
    print(performOperation(with: 10,10, operation: /)) // doesnt work because initial result is always zero in the reduce func
        
        
        
        
        
    }
    
    func performOperation(with numbers: Double..., operation: @escaping (Double, Double) -> Double) -> Double {
        
        
        
        return numbers.reduce(0) { (result, double) -> Double in
            
            return operation(result, double)
            
        }
        
    }
    

    
}
