//
//  Planet.swift
//  Space
//
//  Created by Sharvari on 2023-03-05.
//

import Foundation

struct Planet: Decodable, Identifiable{
    var id: Int
    var name: String
    var desc: String
    var image: String
}
