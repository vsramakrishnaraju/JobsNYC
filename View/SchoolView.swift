//
//  SchoolView.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import SwiftUI

struct SchoolView: View {
    @StateObject private var viewModel = SchoolViewModel()

    var body: some View {
        List {
            ForEach(viewModel.schools) { school in
                VStack(alignment: .leading) {
                    Text("School ID: " + school.dbn)
                        .font(.headline)
                    Text("Building code: " + (school.bldg_code ?? " "))
                        .font(.headline)
                    Text("School Name: " + (school.school_name ?? ""))
                        .font(.headline)
                    Text("Grade Served: " + (school.grades_served ?? " "))
                        .font(.headline)
                }
            }
        }
        .onAppear(perform: {
            viewModel.fetchSchoolData()
        })
        .navigationTitle("NYC Schools")
    }
}
