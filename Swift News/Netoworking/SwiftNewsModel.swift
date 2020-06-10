//
//  SwiftNewsModel.swift
//  Swift News
//
//  Created by Manmeet Swach on 2020-06-09.
//

import Foundation

struct SwiftNewsData: Codable{
    let data: OutsideData
}

struct OutsideData: Codable{
    let children: [DataHolder]
}

struct DataHolder: Codable{
    let data: InsideData?
}

struct InsideData: Codable{
    let title: String
    let url: String
}

