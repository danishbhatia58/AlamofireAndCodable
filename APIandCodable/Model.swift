//
//  Model.swift
//  APIandCodable
//
//  Created by Danish on 15/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import Foundation


struct Hero : Codable{
    let name:String?
    let realname: String?
    let team: String?
    let firstappearance: String?
    let createdby: String?
    let publisher: String?
    let imageurl: String?
    let bio: String?
}
