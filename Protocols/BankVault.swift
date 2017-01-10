//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


protocol ProvideAccess {
    func allowEntryWithPassword(_ password : [Int]) -> Bool
}

class BankVault : ProvideAccess {
    internal func allowEntryWithPassword(_ password: [Int]) -> Bool {
        if password.isEmpty {
            return false
        }
        
        if password.count > 10 {
            return false
        }
        
        for (index, digit) in password.enumerated() {
            if (index % 2 == 0 && digit % 2 != 0) {
                return false;
            }
        }
        
        return true;
    }

    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    
}





