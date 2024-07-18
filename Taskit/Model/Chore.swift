//
//  Chore.swift
//  Taskit
//
//  Created by Oliver tansley on 15/07/2024.
//

import Foundation

struct Chore: Decodable {
    var ID:Int
    var name:String
    var personID:Int
    var status:String
    var startDate:Date
    var endDate:Date
}
