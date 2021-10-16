//
//  Card1Model.swift
//  SlaterTableView
//
//  Created by Andre Linces on 14/10/21.
//

import UIKit

protocol Card1ModelCallBack: class {
    
    func acaoCliqueCard ()
    
}

class Card1Model: tableViewCompatible {
    internal init(delegate: Card1ModelCallBack?, tituloCard: String) {
        self.delegate = delegate
        self.tituloCard = tituloCard
    }
    
    open weak var delegate: Card1ModelCallBack?
    
    //Identifier da célula de reuso.
    var reuseIdentifier: String {
        
        return "Card1ModelCellIdentifier"
    }
    
    //variáveis de inicialização
    var tituloCard: String
    
    //Montando a célula modelo
    func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Card1ModelCell {
            
            //Inicializando a célula (design, values etc...) atributos declarados na 'modelCell
            cell.setupDesign()
            
            cell.setupValues(tituloCard: tituloCard)
            
            //Adicionando cliques no cardView
            cell.cardView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acaoCliqueCardView)))
            
            return cell
            
        }else{
    
        return UITableViewCell()
            
        }
        
    }
    
    @objc func acaoCliqueCardView (sender: UITapGestureRecognizer) {
        
        delegate?.acaoCliqueCard()
        
    }
    
    
}
