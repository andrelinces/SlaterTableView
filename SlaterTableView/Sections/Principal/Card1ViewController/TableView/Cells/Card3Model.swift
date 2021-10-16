//
//  Card3Model.swift
//  SlaterTableView
//
//  Created by Andre Linces on 15/10/21.
//

import UIKit

protocol Card3ModelCallBack: class {
    
    func acaoCliqueCard3 ()
    
}
    class Card3Model: tableViewCompatible {
        internal init(delegate : Card3ModelCallBack?, tituloCard3: String, imageCard3: UIImage) {
            self.delegate = delegate
            self.tituloCard3 = tituloCard3
            self.imageCard3 = imageCard3
        
    }
    
    open weak var delegate: Card3ModelCallBack?
    
    //Identifier da célula de reuso, card3
    var reuseIdentifier : String {
        
        return "Card3ModelCellIdentifier"
        
    }
    //Variável de inicialização
    var tituloCard3: String
        var imageCard3: UIImage
    //Montando modelo card3, célula
    
        func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
            
            if let cellCard3 = tableView.dequeueReusableCell(withIdentifier: "Card3ModelCellIdentifier", for: indexPath) as? Card3ModelCell {
                
                //Inicializando a célula, card3 (design, values etc...) atributos declarados na card3ModelCell
                cellCard3.setupDesign()
                
                cellCard3.setupValues(tituloCard3: tituloCard3)
                
                cellCard3.setupImage(imageCard3: UIImage.init(systemName: "person")!)
                
                //Adicionando cliques no cardView
                cellCard3.card3View.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acaoCliqueCard3View)))
                
                return cellCard3
                
            }else{
                
                return UITableViewCell()
            }
                
                
        }
        
        @objc func acaoCliqueCard3View (sender: UITapGestureRecognizer) {
            
            delegate?.acaoCliqueCard3()
            
        }
               
}
