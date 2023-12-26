//
//  Student.swift
//  BaseNavigation
//
//  Created by berdy on 19.12.23.
//

import Foundation

class Student {
    var name: String?
    var lastName: String?
    var grade: String?
    
    init(name: String? = nil, lastName: String? = nil, grade: String? = nil) {
        self.name = name
        self.lastName = lastName
        self.grade = grade
    }
}
