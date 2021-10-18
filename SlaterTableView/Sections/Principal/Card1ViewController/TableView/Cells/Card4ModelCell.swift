//
//  Card4ModelCell.swift
//  SlaterTableView
//
//  Created by Andre Linces on 16/10/21.
//

import UIKit

class Card4ModelCell: UITableViewCell {
    
    @IBOutlet weak var card4View: UIView!
    @IBOutlet weak var labelTitulocard4: UILabel!
    @IBOutlet weak var imageViewCard4: UIImageView!
    @IBOutlet weak var labelDescricaoCard4: UILabel!
    
    
    
    func setupDesign () {
        
        card4View.modificaDesigneView(cornerRadius: 28)
        
    }
    
    func setupValues (tituloCard4: String, descricaoCard4: String) {
        
        labelTitulocard4.text = tituloCard4
        labelDescricaoCard4.text = descricaoCard4
        
    }
    
   
    
    func setupImage (imageCard4 : String) {
//        var imageCard4: UIImageView
//        imageCard4 = UIImageView(image: UIImage(named: "filme1"))
       // imageViewCard4 = UIImageView(image: UIImage(named: "filme1"))
        //imageViewCard4 = imageCard4
        
        imageViewCard4.image = UIImage(named: imageCard4)
        
    }
   
    
}
