//
//  Nil+Extensions.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/19/22.
//

import Foundation

extension Optional {
    var isNil: Bool {
        return self == nil
    }
    
    var isNotNil: Bool {
        return self != nil
    }
}
