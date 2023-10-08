//
//  School.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import Foundation

struct School: Identifiable, Decodable {
    var id: String { dbn }  // Using dbn as a unique identifier
    var dbn: String
    var bldg_code: String?
    var school_name: String?
    var grades_served: String?
    var lead_cbo_partner: String?
}

enum CodingKeys: String, CodingKey {
    case id = "school__"
    case dbn
    case bldg_code
    case school_name
    case grades_served
    case lead_cbo_partner
}
