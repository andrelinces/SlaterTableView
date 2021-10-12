//
//  PrimeiraCelulaModelCell.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

class PrimeiraCelulaModelCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var labelTituloCard: UILabel!
    
    //Design elementos da tela
    func setupDesign () {
        
        cardView.modificaDesigneView(cornerRadius: 28)
        
    }
    
    //Inicializa os valores da tela
    func setupValues (tituloCard: String) {
        
        labelTituloCard.text = tituloCard
        
    }
    
}
