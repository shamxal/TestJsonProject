//
//  AccessManagement.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 02.09.25.
//

import Foundation

//public, private, fileprivate, final, open.

class A {
    private var number = 0
    
}

class B {
    let a = A()
    
    func test () {
        
    }
}

final class C {
    
}

import UIKit
class Cell: UICollectionViewCell {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var data: String {
        didSet {
            
        }
    }
    
    func configure(datA: String) {
        
    }
}
