//
//  Card3ModelCell.swift
//  SlaterTableView
//
//  Created by Andre Linces on 15/10/21.
//

import UIKit

class Card3ModelCell: UITableViewCell {
    
    @IBOutlet weak var card3View: UIView!
    @IBOutlet weak var labelTituloCard3: UILabel!
    @IBOutlet weak var imageViewCard3: UIImage!
    
    //Método para o design do card3
    func setupDesign () {
        
        card3View.modificaDesigneView(cornerRadius: 60)
        
    }
    
    //Método para o Título da card3, Label
    func setupValues (tituloCard3: String) {
        
        labelTituloCard3.text = tituloCard3
        
    }
    
    func setupImage (imageCard3: UIImage ) {
        //let imageView =
        imageViewCard3 = imageCard3
        
    }
    
    
    
}
