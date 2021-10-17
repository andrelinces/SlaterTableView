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
        
        //Registrando as cards, células
        tableView.register(UINib(nibName: "Card1ModelCell", bundle: Bundle.main), forCellReuseIdentifier: "Card1ModelCellIdentifier")
        
        tableView.register(UINib(nibName: "Card2ModelCell", bundle: Bundle.main), forCellReuseIdentifier: "Card2ModelCellIdentifier")
        
        tableView.register(UINib(nibName: "Card3ModelCell", bundle: Bundle.main), forCellReuseIdentifier: "Card3ModelCellIdentifier")
        
        tableView.register(UINib(nibName: "Card4ModelCell", bundle: Bundle.main), forCellReuseIdentifier: "Card4ModelCellIdentifier")
        
    }
}

extension Card1DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let card1Model = data[indexPath.row] as? Card1Model {
            
            return card1Model.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else if let card2Model = data[indexPath.row] as? Card2Model {
            
            return card2Model.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else if let card3Model = data[indexPath.row] as? Card3Model {
            
            return card3Model.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else if let card4Model = data[indexPath.row] as? Card4Model {
            
            return card4Model.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else{
            
            return UITableViewCell()
        }
        
    }
    
}

