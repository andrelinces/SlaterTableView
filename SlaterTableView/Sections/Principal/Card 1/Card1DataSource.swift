//
//  Card1DataSource.swift
//  SlaterTableView
//
//  Created by Andre Linces on 14/10/21.
//

import UIKit

class Card1DataSource: NSObject {
    
    var data = [Any]()
    
    func initializeTableView (tableView: UITableView) {
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "Card1ModelCell", bundle: Bundle.main), forCellReuseIdentifier: "Card1ModelCellIdentifier")
    }
}

extension Card1DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let card1Model = data[indexPath.row] as? Card1Model {
            
            return card1Model.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else {
            
            return UITableViewCell()
        }
        
    }
    
}

