//
//  Pokemon.swift
//  networking_Practice
//
//  Created by Javier Porras jr on 11/5/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class Pokemon{
    var name: String?
    var imageURL: String?
    var image: UIImage?
    
    init(dictionary: [String : AnyObject]) {
        self.name = dictionary["name"] as? String
        self.imageURL = dictionary["imageUrl"] as? String
    }
}
