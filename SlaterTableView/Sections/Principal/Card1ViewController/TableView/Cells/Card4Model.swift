//
//  Card4Model.swift
//  SlaterTableView
//
//  Created by Andre Linces on 16/10/21.
//

import UIKit

protocol Card4ModelCallBack: class {
    
    func acaoCliqueCard4 ()
     
}

class Card4Model: tableViewCompatible {
    internal init(delegate: Card4ModelCallBack, tituloCard4: String, descricaoCard4: String, imageCard4: UIImage) {
        self.delegate = delegate
        self.tituloCard4 = tituloCard4
        self.descricaoCard4 = descricaoCard4
        self.imageCard4 = imageCard4
    }
    open weak var delegate: Card4ModelCallBack?

    //Variável de inicializacao
    var reuseIdentifier: String {
        
        return "Card4ModelCellIdentifier"
    }
    
    //Variáveis de inicialização
    var tituloCard4 : String
    var descricaoCard4 : String
    var imageCard4 : UIImage
    //var nomeFilme = UIImage(named: "filme1")
    
    func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
        
        if let cellCard4 = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Card4ModelCell {
            
            cellCard4.setupDesign()
            
            cellCard4.setupValues(tituloCard4: tituloCard4, descricaoCard4: descricaoCard4)
            
            cellCard4.setupImage(imageCard4: UIImage.init(systemName: "video.fill")! )
            
            //Adicionando cliques cellCard4
            cellCard4.card4View.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acaoCliqueCard4View)))
            
            return cellCard4
            
        }else{
            
            return UITableViewCell()
        }
        
    }
    
    @objc func acaoCliqueCard4View (sender: UITapGestureRecognizer) {
        
        delegate?.acaoCliqueCard4()
    }
    
}
