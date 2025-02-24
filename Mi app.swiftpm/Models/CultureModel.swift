//
//  CultureModel.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import Foundation

struct CultureModel {
    let name: String
    let imageName: String
    let description: String
    let flag: String
    
    var nameWithFlag: String {
        return "\(name) \(flag)"
    }
}
