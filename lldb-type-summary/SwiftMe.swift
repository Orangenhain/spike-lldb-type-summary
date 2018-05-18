//
//  SwiftMe.swift
//  lldb-type-summary
//
//  Created by William Ork on 14.05.18.
//  Copyright © 2018 William Ork. All rights reserved.
//

import Foundation

@objc class MeineKlasse: NSObject {
    
    @objc func nudge() {
        let o = MYObject.init()
        
        // ADD breakpoint here
        NSLog("MYObject from Swift: %@", o)
        NSLog("MYObject from Swift: %@", o)
    }
    
}
