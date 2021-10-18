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
    /*
    //teste de tratamento da imageView
    var imagem: UIImage!

     init (imagem: String){
        
        self.imagem = UIImage(named: imagem)
        
    }
    */
    
    
    internal init(delegate: Card4ModelCallBack, tituloCard4: String, descricaoCard4: String, imageCard4: String) {
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
    var imageCard4 : String
    //var nomeFilme = UIImage(named: "filme1")
    
    func cellForTableView(tableView: UITableView, atIndexpath indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Card4ModelCell {
            
            cell.setupDesign()
            
            cell.setupValues(tituloCard4: tituloCard4, descricaoCard4: descricaoCard4)
            
            //cellCard4.setupImage(imageCard4: UIImageView(image: UIImage(imageLiteralResourceName: "filme1")))
//            cellCard4.imageViewCard4.image = #imageLiteral(resourceName: "filme1")
            
            cell.setupImage(imageCard4: imageCard4)
            
            //Adicionando cliques cellCard4
            cell.card4View.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acaoCliqueCard4View)))
            
            if indexPath.row == 0 {
                cell.labelTitulocard4.text = "1 Celula"
            }else if indexPath.row == 1 {
              cell.labelTitulocard4.text = "2 Celula"
            }else if indexPath.row == 2 {
                cell.labelTitulocard4.text = "3 Celula"
            }else if indexPath.row == 3 {
        cell.labelTitulocard4.text = "4 Celula"
            }else if indexPath.row == 4 {
        cell.labelTitulocard4.text = "5 Celula"
            }else if indexPath.row == 5 {
        cell.labelTitulocard4.text = "6 Celula"
            }else if indexPath.row == 6 {
                cell.labelTitulocard4.text = "7 Celula"
            }else if indexPath.row == 7 {
                cell.labelTitulocard4.text = "8 Celula"
                
            }
                
            
            return cell
            
        }else{
            
            return UITableViewCell()
        }
        
    }
    
    @objc func acaoCliqueCard4View (sender: UITapGestureRecognizer) {
        
        delegate?.acaoCliqueCard4()
    }
    
}
