//
//  Card2ViewController.swift
//  SlaterTableView
//
//  Created by Andre Linces on 16/10/21.
//

import UIKit

class Card2ViewController: UIViewController, Card1ModelCallBack, Card2ModelCallBack, Card3ModelCallBack, Card4ModelCallBack {
    
    func acaoCliqueCard() {
        
    }
    
    func acaoCliqueCard2() {
        
    }
    func acaoCliqueCard3() {
        
    }
    func acaoCliqueCard4() {
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    //criando referência com o dataSource
    let dataSourceCard2 = Card1DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    //var nomeFilme = UIImage(named: "filme1")
    func setupTableView () {
        
        let card4 = Card4Model(delegate: self, tituloCard4: "Card4 - Filme", descricaoCard4: "007 - Segundo Filme da nova série", imageCard4:  "filme1")
        
        let card5 = Card4Model(delegate: self, tituloCard4: "Card4 - Filme", descricaoCard4: "007 - Segundo Filme da nova série", imageCard4:  "filme2")
        
        //let card3 = Card3Model(delegate: self, tituloCard3: "Card3 teste", imageCard3: UIImage.init(systemName: "person")!)
        
        dataSourceCard2.data.append(card4)
        dataSourceCard2.data.append(card5)
        dataSourceCard2.data.append(card4)
        dataSourceCard2.data.append(card5)
        dataSourceCard2.data.append(card4)
        dataSourceCard2.data.append(card5)
        dataSourceCard2.data.append(card4)
        dataSourceCard2.data.append(card5)
        
        tableView.allowsSelection = false
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        //exibindo a tableView com os cards inseridos
        dataSourceCard2.initializeTableView(tableView: tableView)
        
    }
    
}
