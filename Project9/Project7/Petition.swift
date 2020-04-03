//
//  Petition.swift
//  Project7
//
//  Created by Jerry Ye on 4/1/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import Foundation

struct Petition: Codable{
    var title: String
    var body: String
    var signatureCount: Int
}

struct Petitions: Codable{
    var results: [Petition]
}
