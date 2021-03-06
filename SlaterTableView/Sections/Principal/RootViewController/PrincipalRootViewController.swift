//
//  RootViewController.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

class PrincipalRootViewController: UIViewController, PrimeiraCelulaModelCallBack {
  
    //Protocolos das celulas
    func acaoCliqueCard(indexPath: IndexPath) {
        print("clicou no card")
        //Vou tentar enviar para uma nova tela
        
        
        if indexPath.row == 0 {
            
            performSegue(withIdentifier: "segueCard1" , sender: nil)
            
        }else if indexPath.row == 1 {
            
            performSegue(withIdentifier: "segueCard2" , sender: nil)
        }
        
        //let testeRecupera = dataSource.data.description
        //let recuperatable = tableView.indexPathForSelectedRow
        //print(recuperatable)
          
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource = RootDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
    }
    

    func setupTableView () {
        
        let primeiraCelulaModel = PrimeiraCelulaModel(delegate: self, tituloCard: "Primeira")
        let segundaCelulaModel = PrimeiraCelulaModel(delegate: self, tituloCard: "Segunda")
        let terceiraCelulaModel = PrimeiraCelulaModel(delegate: self, tituloCard: "Terceira")
        let quartaCelulaModel = PrimeiraCelulaModel(delegate: self, tituloCard: "Quarta")
        let quintaCelulaModel = PrimeiraCelulaModel(delegate: self, tituloCard: "Quinta")
        
        dataSource.data.append(primeiraCelulaModel)
        
        dataSource.data.append(segundaCelulaModel)
        
        dataSource.data.append(terceiraCelulaModel)
        
        dataSource.data.append(quartaCelulaModel)
        
        dataSource.data.append(quintaCelulaModel)
        
        dataSource.initializeTableView(tableView: tableView)
        
        tableView.allowsSelection = false
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        
    }

}
