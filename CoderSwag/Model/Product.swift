//
//  Product.swift
//  CoderSwag
//
//  Created by TheAppExperts on 12/20/17.
//  Copyright © 2017 TheAppExperts. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.price = price
        self.title = title
        self.imageName = imageName
    }
}
