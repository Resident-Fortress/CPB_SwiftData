//
//  CollegeModel.swift
//  CPB_SwiftData
//
//  Created by Matthew Dudzinski on 9/26/24.
//

import SwiftUI
import SwiftData

@Model
class CollegeModel: Hashable {
    var nameOfCollege:String
    var locationOfCollege:String
    var numberOfStudents:String
    var collegeURL:String
    
    init(nameOfCollege: String, locationOfCollege: String, numberOfStudents: String, collegeURL:String) {
        self.nameOfCollege = nameOfCollege
        self.locationOfCollege = locationOfCollege
        self.numberOfStudents = numberOfStudents
        self.collegeURL = collegeURL
    }
}
