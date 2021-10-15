//
//  Card1ModelCell.swift
//  SlaterTableView
//
//  Created by Andre Linces on 14/10/21.
//

import UIKit

class Card1ModelCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var labelTituloCard1: UILabel!

    //Design elementos da tela
    func setupDesign () {
        
        cardView.modificaDesigneView(cornerRadius: 28)
        
    }
    
    func setupValues (tituloCard: String) {
        
        labelTituloCard1.text = tituloCard
          
    }
    
}
