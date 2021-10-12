//
//  RootDataSource.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

class RootDataSource: NSObject {
    
    var data = [Any]()
    
    func initializeTableView (tableView: UITableView) {
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "PrimeiraCelulaModelCell", bundle: Bundle.main), forCellReuseIdentifier: "PrimeiraCelulaModelCellIdentifier")
        
    }
    
}


extension RootDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let primeiraCelulaModel = data[indexPath.row] as? PrimeiraCelulaModel {
            
            return primeiraCelulaModel.cellForTableView(tableView: tableView, atIndexpath: indexPath)
            
        }else {
            
            return UITableViewCell()
        }
        
    }
}
