//
//  ProductCell.swift
//  CoderSwag
//
//  Created by TheAppExperts on 12/20/17.
//  Copyright © 2017 TheAppExperts. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    
    func configureCell(withProduct product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productPrice.text = product.price
        productTitle.text = product.title
    }
}
