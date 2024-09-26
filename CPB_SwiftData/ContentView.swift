//
//  ContentView.swift
//  CPB_SwiftData
//
//  Created by Matthew Dudzinski on 9/26/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query var CollegeList: [CollegeModel]
    @State var NameOfCollege:String = ""
    @State var locoOfCollege:String = ""
    @State var numOfStudents:String = ""
    @State var URLofCollege:String = ""
    @State private var isAlertPresented = false
    
    var body: some View {
        Button("+") {
            isAlertPresented = true
        }
        .alert("nameOfCollege", isPresented: $isAlertPresented) {
            TextField("College Name", text: $NameOfCollege)
            TextField("Location of College", text: $locoOfCollege)
            TextField("# of Students attending", text: $numOfStudents)
            TextField("College Website URL", text: $URLofCollege)
            Button("OK", role: .cancel) {
                let college = CollegeModel(nameOfCollege: NameOfCollege, locationOfCollege: locoOfCollege, numberOfStudents: numOfStudents, collegeURL: URLofCollege)
                context.insert(college)
            }
        }
        List {
            ForEach(CollegeList) { college in
                Text("\(college.nameOfCollege) \(college.locationOfCollege) \(college.numberOfStudents) \(college.collegeURL)")
            }
        }
        
    }
}
