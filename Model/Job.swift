//
//  Job.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import Foundation

struct Job: Identifiable, Decodable {
    let id: String
    let borough: String
    let street_name: String
    let job_type: String
    let job_status: String
    let job_status_descrp: String
    let latest_action_date: String
    let building_type: String
    let applicant_s_first_name: String
    let applicant_s_last_name: String
    let job_description: String?
    let applicant_professional_title: String?

    enum CodingKeys: String, CodingKey {
        case id = "job__"
        case borough
        case street_name
        case job_type
        case job_status
        case job_status_descrp
        case latest_action_date
        case building_type
        case applicant_s_first_name
        case applicant_s_last_name
        case job_description
        case applicant_professional_title
    }
}

