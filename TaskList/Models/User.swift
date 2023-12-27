//
//  User.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
