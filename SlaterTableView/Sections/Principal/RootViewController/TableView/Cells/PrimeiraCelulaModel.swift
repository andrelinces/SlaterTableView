//
//  PrimeiraCelulaModel.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

protocol PrimeiraCelulaModelCallBack: class {
    
    func acaoCliqueCard ()
    
}

class PrimeiraCelulaModel: tableViewCompatible {
    internal init(delegate: PrimeiraCelulaModelCallBack?, tituloCard: String) {
        self.delegate = delegate
        self.tituloCard = tituloCard
    }
    
    
    
    open weak var delegate: PrimeiraCelulaModelCallBack?
    
    var reuseIdentifier: String {
        return "PrimeiraCelulaModelCellIdentifier"
    }
    
    //variáveis de inicialização
    var tituloCard : String
    
    func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier,for: indexPath) as? PrimeiraCelulaModelCell {
            
            //Inicializando a célula (design, values etc)
            cell.setupDesign()
            
            cell.setupValues(tituloCard: tituloCard)
            
            //Adicionando cliques
            cell.cardView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acaoCliqueCardView)))
            
            return cell
            
        }else{
            
            print("teste")
            
            return UITableViewCell()
            
        }
    }
    
    @objc func acaoCliqueCardView (sender: UITapGestureRecognizer) {
        delegate?.acaoCliqueCard()
    }
    
    
}
