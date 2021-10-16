//
//  Card2ModelCell.swift
//  SlaterTableView
//
//  Created by Andre Linces on 15/10/21.
//

import UIKit

class Card2ModelCell: UITableViewCell {
    
    @IBOutlet weak var card2View: UIView!
    @IBOutlet weak var labelTituloCard2: UILabel!
    
    func setupDesign () {
        
        card2View.modificaDesigneView(cornerRadius: 28)
        
    }
    
    func setupValues (tituloCard2: String) {
        
        labelTituloCard2.text = tituloCard2
        
    }
    
}
