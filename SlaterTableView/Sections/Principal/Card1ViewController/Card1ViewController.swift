//
//  Card1RootViewController.swift
//  SlaterTableView
//
//  Created by Andre Linces on 14/10/21.
//

import UIKit

class Card1ViewController: UIViewController, Card1ModelCallBack, Card2ModelCallBack, Card3ModelCallBack {
    func acaoCliqueCard3() {
        
    }
    
    
    func acaoCliqueCard2() {
        
    }
    
    //Protocolos das células
    func acaoCliqueCard() {
        
        //print("Clicou no card1")
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSourceCard1 = Card1DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupTableView()
        
    }
    //Função que vai montar os cards na view designada
    func setupTableView () {
        
        //declarando a quantidade de cards
        let card1 = Card1Model(delegate: self, tituloCard: "Card1")
        
        let card2teste = Card2Model(delegate: self, tituloCard2: "Card2")
        
        let card3 = Card3Model(delegate: self, tituloCard3: "Card3-Personal", imageCard3: UIImage.init(systemName: "person")!)
        
        //Inserindo card2, porém utilizando o datasource1 do card1
        dataSourceCard1.data.append(card2teste)
        //Inserindo card1
        dataSourceCard1.data.append(card1)
        
        dataSourceCard1.data.append(card3)
        
        tableView.allowsSelection = false
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        //Exibindo a table com quantidade de cards inseridos.
        dataSourceCard1.initializeTableView(tableView: tableView)
        
    }
    
}
