//
//  Person.swift
//  swift-people
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    private(set) var name: String
    private(set) var ageInYears: Int?
    private(set) var skills = Set<String>()
    
    var qualifiedTutor: Bool {
        
        if self.skills.count >= 4 {
            return true
        }
        
        return false
        
    }
    
    init(name: String, ageInYears: Int?) {
        
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        
        var happyBirthday: String
        
        if ageInYears == nil {
            
            happyBirthday = "HAPPY BIRTHDAY \(name.uppercaseString)!!!"
            
            return happyBirthday
            
        } else {
            
            happyBirthday = "HAPPY \(ageInYears)\(ageInYears?.ordinal()) BIRTHDAY \(name.uppercaseString)!!!"
        }
        return happyBirthday
    }
    
    func learnSkillBash() {
        self.skills.insert("bash")
        
    }
    
    func learnSkillXcode() {
        self.skills.insert("Xcode")
        
    }
    
    func learnSkillObjectiveC() {
        self.skills.insert("Objective-C")
        
    }
    
    func learnSkillSwift() {
        self.skills.insert("Swift")
        
    }
    
    func learnSkillInterfaceBuilder() {
        self.skills.insert("Interface Builder")
        
    }
}




































