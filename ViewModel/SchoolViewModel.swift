//
//  SchoolViewModel.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import Foundation

class SchoolViewModel: ObservableObject {
    @Published var schools: [School] = []
    private let schoolDataURL = "https://data.cityofnewyork.us/resource/su38-ur5m.json"
    
    func fetchSchoolData() {
        guard let url = URL(string: schoolDataURL) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode([School].self, from: data)
                    DispatchQueue.main.async {
                        self.schools = decodedData
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }.resume()
    }
}
