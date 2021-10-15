//
//  Card1RootViewController.swift
//  SlaterTableView
//
//  Created by Andre Linces on 14/10/21.
//

import UIKit

class Card1ViewController: UIViewController, Card1ModelCallBack {
    
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
    
    func setupTableView () {
        
        let card1 = Card1Model(delegate: self, tituloCard: "Card1")
        
        dataSourceCard1.data.append(card1)
        
        dataSourceCard1.initializeTableView(tableView: tableView)
        
        tableView.allowsSelection = false
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        
    }
    
}
