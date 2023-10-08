//
//  JobViewModel.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import Foundation

class JobViewModel: ObservableObject {
    @Published var jobs: [Job] = []
    private let jobDataURL = "https://data.cityofnewyork.us/resource/ic3t-wcy2.json"
    
    func fetchData() {
        guard let url = URL(string: jobDataURL) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode([Job].self, from: data)
                    DispatchQueue.main.async {
                        self.jobs = decodedData
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }.resume()
    }
}
