//
//  Card2Model.swift
//  SlaterTableView
//
//  Created by Andre Linces on 15/10/21.
//

import UIKit

protocol Card2ModelCallBack: class {
    
    func acaoCliqueCard2 ()
     
}

class Card2Model: tableViewCompatible {
    internal init(delegate : Card2ModelCallBack?, tituloCard2: String) {
        self.delegate = delegate
        self.tituloCard2 = tituloCard2
        
    }
    
    open weak var delegate: Card2ModelCallBack?
    
    //Identifier da célula de reuso
    var reuseIdentifier: String {
        
        return "Card2ModelCellIdentifier"
        
    }
    
    //variáveis de inicialização
    var tituloCard2: String
    
    func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
        
        if let cellcard2 = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Card2ModelCell {
            
            //Inicializando a célula (design, values etc...) atributos declarados na modelCell
            cellcard2.setupDesign()
            
            cellcard2.setupValues(tituloCard2: tituloCard2)
            
            //Adicionando cliques no cardView
            cellcard2.card2View.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( acaoCliqueCard2View )))
            
            
            return cellcard2
            
        }else {
            
            return UITableViewCell ()
        }
        
    }
    
    @objc func acaoCliqueCard2View (sender: UITapGestureRecognizer) {
        
        delegate?.acaoCliqueCard2()
        
    }
    
    
    
}

