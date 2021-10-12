//
//  GlobalExtension.swift
//  SlaterTableView
//
//  Created by Andre Linces on 12/10/21.
//

import UIKit

extension UIView {
    
    func modificaDesigneView(cornerRadius: CGFloat, shadow: CGSize, shadowOpacity: Float) {
        self.layer.cornerRadius = cornerRadius
        
        self.layer.shadowOffset = shadow
        
        self.layer.shadowOpacity = shadowOpacity
        
    }
    
    //cardview
    func modificaDesigneView(cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
        
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        self.layer.shadowOpacity = 0.3
        
    }
    
}
