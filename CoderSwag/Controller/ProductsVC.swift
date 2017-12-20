//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by TheAppExperts on 12/20/17.
//  Copyright © 2017 TheAppExperts. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    let productCell: String = "ProductCell"
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(withCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCell, for: indexPath) as? ProductCell {
            cell.configureCell(withProduct: products[indexPath.row])
            return cell
        }
        return ProductCell()
    }

}
