//
//  JobView.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import Foundation


import SwiftUI

struct JobView: View {
    @StateObject private var viewModel = JobViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.jobs) { job in
                VStack(alignment: .leading) {
                    Text("Job ID: " + job.id)
                        .font(.headline)
                    Text("Job Description: " + (job.job_description ?? " "))
                        .font(.headline)
                    Text("Applicant Name: " + job.applicant_s_first_name)
                        .font(.headline)
                    Text("Title: " + (job.applicant_professional_title ?? " "))
                        .font(.headline)
                }
            }
        }
        .onAppear(perform: {
            viewModel.fetchData()
        })
        .navigationTitle("NYC Jobs")
    }
}
