//
//  GlobalProtocol.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

//Protocolo tem a função de definir qual método será usado.
protocol tableViewCompatible {
    
    var reuseIdentifier: String {get}
    
    func cellForTableView ( tableView:UITableView, atIndexpath indexPath: IndexPath  ) -> UITableViewCell
    
}

//Protocolo tem a função de definir qual método será usado.
protocol collectionViewCompatible {
    
    var reuseIdentifier: String {get}
    
    func cellForColletionView ( collectionView:UICollectionView, atIndexpath indexPath: IndexPath  ) -> UICollectionViewCell
    
}
