//
//  Manager.swift
//  Premier League Chants
//
//  Created by Михаил Герман on 04.08.2023.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
